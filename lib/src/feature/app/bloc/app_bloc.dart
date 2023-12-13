import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';

part 'app_bloc.freezed.dart';

/* App Events */

@freezed
class AppEvent with _$AppEvent {
  const AppEvent._();

  const factory AppEvent.checkAuth() = _CheckAuth;

  const factory AppEvent.logOut() = _LogOut;

  const factory AppEvent.login({required String token}) = _Login;
}

/* App States */

@freezed
class AppState with _$AppState {
  const factory AppState.processing() = ProcessingAppState;

  const factory AppState.unauthorized() = _NotAuthorizedState;

  const factory AppState.authorized() = _InAppState;

  const factory AppState.hasMembership() = _HasMembershipState;

  const factory AppState.error(
      {@Default('An error has occurred') String message}) = ErrorAppState;

  const AppState._();

  bool get isAuthorized =>
      maybeWhen(orElse: () => false, authorized: () => true);
}

/// Buisiness Logic Component AppBLoC
class AppBLoC extends Bloc<AppEvent, AppState> implements EventSink<AppEvent> {
  AppBLoC({
    required IUserRepository repository,
    // required IAuthRepository authRepository,
    AppState? initialState,
  })  : _repository = repository,
        // _authRepository = authRepository,
        super(
          initialState ?? const AppState.processing(),
        ) {
    on<AppEvent>(
      (event, emit) => event.map<Future<void>>(
        checkAuth: (event) => _checkAuth(event, emit),
        logOut: (event) => _logOut(event, emit),
        login: (event) => _login(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final IUserRepository _repository;
  // final FirebaseRepository _repository;

  // final IAuthRepository _authRepository;

  Future<void> _checkAuth(_CheckAuth event, Emitter<AppState> emit) async {
    try {
      emit(const AppState.processing());

      final isAuthenticated = _repository.hasToken();

      log('User is logged in: $isAuthenticated');

      if (isAuthenticated) {
        emit(const AppState.authorized());
      } else {
        emit(const AppState.unauthorized());
      }
    } on Object catch (e) {
      emit(AppState.error(message: e.toString()));
      rethrow;
    }
  }

  Future<void> _login(_Login event, Emitter<AppState> emit) async {
    try {
      log('Trying to login with token: ${event.token}');
      emit(const AppState.processing());

      await _repository.login(event.token);

      emit(const AppState.authorized());
    } catch (e) {
      emit(AppState.error(message: e.toString()));
      rethrow;
    }
  }

  Future<void> _logOut(_LogOut event, Emitter<AppState> emit) async {
    try {
      emit(const AppState.processing());

      await _repository.logOut();

      emit(const AppState.unauthorized());

      // final result = await _authRepository.logOut();

      // await result.when(
      //   success: (_) async {
      //     await _repository.logOut();

      //     emit(const AppState.unauthorized());
      //   },
      //   failure: (e) {
      //     emit(AppState.error(message: e.msg ?? 'Error when logging out!'));
      //   },
      // );
    } catch (e) {
      emit(AppState.error(message: e.toString()));
      rethrow;
    }
  }
}
