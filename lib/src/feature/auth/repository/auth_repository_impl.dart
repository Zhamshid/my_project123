import 'package:my_project/src/core/network/layers/network_executer.dart';
import 'package:my_project/src/feature/auth/repository/auth_repository.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final NetworkExecuter client;

  AuthRepositoryImpl({required this.client});
}
