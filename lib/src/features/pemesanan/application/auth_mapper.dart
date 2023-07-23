import '/src/features/authentication/data/response/user_response.dart';
import '/src/features/authentication/domain/user.dart';
import '/src/services/remote/config/config.dart';

class AuthenticationMapper {
  AuthenticationMapper._();

  static Result<User> mapToUser(Result<UserResponse> response) {
    return response.when(
      success: (data) {
        return Result.success(
          User(
            id: data.id ?? "-",
            name: data.name ?? "-",
            email: data.email ?? "-",
            image: data.image ?? "-",
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }
}
