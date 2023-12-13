import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/logic/firebase_repository.dart';

part 'name_cubit.freezed.dart';

@freezed
abstract class NameState with _$NameState {
  const NameState._();

  const factory NameState.initial() = _InitialNameState;

  const factory NameState.success() = _SuccessNameState;

  const factory NameState.error({
    @Default('Произошла ошибка') String message,
  }) = _ErrorNameState;

  const factory NameState.inProgress() = _InProgressNameState;

  bool get inProgress => maybeMap(
        orElse: () => false,
        inProgress: (_) => true,
      );

  bool get isSuccess => maybeMap(
        orElse: () => false,
        success: (_) => true,
      );
}

class NameCubit extends Cubit<NameState> {
  final FirebaseRepository repository;

  NameCubit({required this.repository}) : super(const NameState.initial());

  Future<void> addName(String name) async {
    try {
      emit(const NameState.inProgress());
      await repository.updateUser(name);
      emit(const NameState.success());
    } on Object catch (e) {
      emit(NameState.error(message: e.toString()));
    }
  }
}
