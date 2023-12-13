import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_phone_cubit.freezed.dart';

@freezed
abstract class CheckPhoneState with _$CheckPhoneState {
  const CheckPhoneState._();

  const factory CheckPhoneState.initial() = _InitialCheckPhoneState;

  const factory CheckPhoneState.success({
    required String generatedCode,
  }) = _SuccessCheckPhoneState;

  const factory CheckPhoneState.error({
    @Default('Произошла ошибка') String message,
  }) = _ErrorCheckPhoneState;

  const factory CheckPhoneState.inProgress() = _InProgressCheckPhoneState;

  bool get inProgress => maybeMap(
        orElse: () => false,
        inProgress: (_) => true,
      );

  bool get isSuccess => maybeMap(
        orElse: () => false,
        success: (_) => true,
      );
}

class CheckPhoneCubit extends Cubit<CheckPhoneState> {
  CheckPhoneCubit() : super(const CheckPhoneState.initial());

  Future<void> checkPhone(String phone) async {
    try {
      emit(const CheckPhoneState.inProgress());

      FirebaseAuth auth = FirebaseAuth.instance;

      log('Phone to verify:  ${"+7 " + phone}');

      await auth.verifyPhoneNumber(
        phoneNumber: "+7 " + phone,
        codeSent: (verificationId, forceResendingToken) {
          log('codeSent verificationId => $verificationId');
          emit(
            CheckPhoneState.success(
              generatedCode: verificationId.toString(),
            ),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        verificationFailed: (error) {
          emit(
            CheckPhoneState.error(
              message: error.message ?? 'Непредвиденная ошибка!',
            ),
          );
        },
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
      );
    } on Object catch (e) {
      emit(CheckPhoneState.error(message: e.toString()));
    }
  }
}
