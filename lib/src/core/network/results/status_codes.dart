/// All status codes from backend will represented here
abstract class StatusCodes {
  StatusCodes._();
  static const int unAuthenticated = 401;

  static const int forbidden = 403;

  static const int notFound = 404;

  static const int serverError = 500;

  static const int unProcessable = 422;

  static const int needUpdate = 426;
}
