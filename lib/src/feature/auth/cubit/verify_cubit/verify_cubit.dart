import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/core/logic/firebase_repository.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'verify_cubit.freezed.dart';

@freezed
abstract class VerifyState with _$VerifyState {
  const VerifyState._();

  /// Первичное состояние
  const factory VerifyState.initial() = _InitialVerifyState;

  /// Успешно авторизован
  const factory VerifyState.success({
    required bool isNewUser,
    required bool isNameFilled,
    required bool isProfileFilled,
    required String token,
  }) = _SuccessVerifyState;

  /// Ошибка при попытке авторизации
  const factory VerifyState.error({
    @Default('Произошла ошибка') String message,
    @Default(true) bool isError,
  }) = _ErrorVerifyState;

  /// В обработке
  const factory VerifyState.inProgress() = _InProgressVerifyState;

  /// Геттер для стейта прогресса
  bool get inProgress => maybeMap(
        orElse: () => false,
        inProgress: (_) => true,
      );

  /// Геттер для статуса логина
  bool get isSuccess => maybeMap(
        orElse: () => false,
        success: (_) => true,
      );
}

class VerifyCubit extends Cubit<VerifyState> {
  final FirebaseAuth auth;
  final FirebaseRepository firebaseRepository;
  final SharedPreferences preferences;
  final IUserRepository userRepository;

  VerifyCubit({
    required this.auth,
    required this.firebaseRepository,
    required this.preferences,
    required this.userRepository,
  }) : super(const VerifyState.initial());

  // String? _newCode;

  // bool _isRightCode = false;

  Future<void> login(
      String verificationId, String smsCode, String phone) async {
    try {
      emit(const VerifyState.inProgress());

      // Create a PhoneAuthCredential using verificationId and smsCode
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      // Sign in with the credential
      await auth.signInWithCredential(credential);

      await preferences.setString('phone', '+7 $phone');
      print('called');

      final isNewUser = await firebaseRepository.isNewUser();

      if (isNewUser) {
        await firebaseRepository.createUser(
          UserModel(
            phone: '+7 $phone',
            uid: auth.currentUser?.uid,
          ),
        );

        // if (auth.currentUser?.uid != null) {
        //   userRepository.login(auth.currentUser?.uid ?? '');
        // }

        emit(
          VerifyState.success(
            isNewUser: true,
            isNameFilled: false,
            isProfileFilled: false,
            token: auth.currentUser?.uid ?? '',
          ),
        );
      } else {
        final userModel = await firebaseRepository.getUser();

        // if (userModel.uid != null) {
        //   userRepository.login(userModel.uid ?? '');
        // }

        emit(
          VerifyState.success(
            isNewUser: false,
            isNameFilled: userModel.userName != null,
            isProfileFilled: userModel.city != null,
            token: userModel.uid ?? '',
          ),
        );
      }
    } on Object catch (e) {
      emit(
        VerifyState.error(
          message: e.toString().contains(
                  'The multifactor verification code used to create the auth credential is invalid.Re-collect the verification code and be sure to use the verification code provided by the user.')
              ? 'Введен неправильный СМС код!'
              : e.toString(),
        ),
      );
    }
  }
}

  // Future<void> login(String generatedCode, String smsCode, String phone) async {
  //   try {
  //     emit(const VerifyState.inProgress());

  //     if (_newCode != null) {
  //       if (_newCode == smsCode) {
  //         _isRightCode = true;
  //       } else {
  //         _isRightCode = false;
  //       }
  //     } else if (generatedCode == smsCode) {
  //       _isRightCode = true;
  //     } else {
  //       _isRightCode = false;
  //     }

  //     if (_isRightCode) {
  //       final user = await auth.signInAnonymously();

  //       await preferences.setString('phone', '+7 $phone');
  //       print('called');

  //       final isNewUser = await firebaseRepository.isNewUser();

  //       if (isNewUser) {
  //         await firebaseRepository.createUser(
  //           UserModel(
  //             phone: '+7 $phone',
  //             uid: user.user?.uid,
  //           ),
  //         );

  //         emit(
  //           const VerifyState.success(
  //             isNewUser: true,
  //             isNameFilled: false,
  //             isProfileFilled: false,
  //           ),
  //         );
  //       } else {
  //         final userModel = await firebaseRepository.getUser();

  //         emit(
  //           VerifyState.success(
  //             isNewUser: false,
  //             isNameFilled: userModel.userName != null,
  //             isProfileFilled: userModel.city != null,
  //           ),
  //         );
  //       }
  //     } else {
  //       emit(const VerifyState.error(message: 'Введен неправильный СМС код!'));
  //     }
  //   } on Object catch (e) {
  //     emit(VerifyState.error(message: e.toString()));
  //   }
  // }



// }
