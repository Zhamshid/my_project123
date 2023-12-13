import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/logic/firebase_repository.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';

part 'user_profile_edit_bloc.freezed.dart';

@freezed
abstract class UserProfileEditEvent with _$UserProfileEditEvent {
  const UserProfileEditEvent._();

  /// Событие обновления профиля ползователя
  const factory UserProfileEditEvent.update({
    required UserModel request,
  }) = _UpdateUserProfileEditEvent;
}

@freezed
abstract class UserProfileEditState with _$UserProfileEditState {
  const UserProfileEditState._();

  const factory UserProfileEditState.initial() = _InitialUserProfileEditState;

  /// Состояние прогресса обновления профиля
  const factory UserProfileEditState.updateProfileInProgress() =
      _UpdateProfileInProgressUserProfileEditState;

  /// Состояние успешно изменено
  const factory UserProfileEditState.updateSuccess() =
      _UpdateSuccessUserProfileEditState;

  /// Состояние ошибки при обновлении профиля
  const factory UserProfileEditState.updateProfileError(
          {@Default('Произошла ошибка') String message}) =
      _UpdateProfileErrorUserProfileEditState;

  /// Геттер для состояния обновления профиля
  bool get isUpdating => maybeMap(
        orElse: () => false,
        updateProfileInProgress: (_) => true,
      );
}

class UserProfileEditBLoC
    extends Bloc<UserProfileEditEvent, UserProfileEditState> {
  final FirebaseRepository _repository;

  UserProfileEditBLoC({
    required final FirebaseRepository repository,
  })  : _repository = repository,
        super(const UserProfileEditState.initial()) {
    on<UserProfileEditEvent>(
      (event, emit) => event.map(
        update: (event) => _update(event, emit),
      ),
    );
  }

  Future<void> _update(_UpdateUserProfileEditEvent event,
      Emitter<UserProfileEditState> emit) async {
    try {
      /// Состояние загрузки
      emit(const UserProfileEditState.updateProfileInProgress());

      /// Отправляем запрос
      await _repository.updateUserFull(event.request);

      /// Обновляем пользователя
      emit(const UserProfileEditState.updateSuccess());
    } on Object {
      emit(
        const UserProfileEditState.updateProfileError(
          message: 'Ошибка при обновлении профиля',
        ),
      );
      rethrow;
    }
  }
}
