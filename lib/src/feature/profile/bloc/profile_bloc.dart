import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/logic/firebase_repository.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';

part 'profile_bloc.freezed.dart';

/// PROFILE EVENT
@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchProfile() = _FetchProfile;
}

/// PROFILE STATE
@freezed
class ProfileState with _$ProfileState {
  const ProfileState._() : super();

  /// inital
  const factory ProfileState.initial() = _Initial;

  /// inProgress
  const factory ProfileState.inProgress() = _FetchProfileInProgress;

  /// error
  const factory ProfileState.error({
    @Default('Произошла ошибка') String message,
  }) = _FetchProfileError;

  /// success
  const factory ProfileState.success({required UserModel userModel}) =
      _FetchProfileSuccess;

  /// Геттер для состояния профиля
  bool get isFetchingProfile => maybeMap(
        orElse: () => false,
        inProgress: (_) => true,
        error: (_) => false,
      );
}

class ProfileBLoC extends Bloc<ProfileEvent, ProfileState> {
  final FirebaseRepository _firebaseRepository;

  ProfileBLoC({
    required final FirebaseRepository repository,
  })  : _firebaseRepository = repository,
        super(const _Initial()) {
    on<ProfileEvent>(
      (event, emit) => event.map(
        fetchProfile: (event) => _fetchProfile(event, emit),
      ),
    );
  }

  /// FetchProfile
  Future<void> _fetchProfile(
      ProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.inProgress());

    try {
      final result = await _firebaseRepository.getUser();

      emit(
        ProfileState.success(
          userModel: result,
        ),
      );
    } catch (e) {
      emit(
        ProfileState.error(
          message: 'Произошла ошибка при получении профиля',
        ),
      );
    }
  }
}
