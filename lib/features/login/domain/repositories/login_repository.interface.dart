import 'package:kps/features/authentication/data/models/authorization_token_response.dart';

abstract class LoginRepository {
  Future<AuthorizationTokenResponse?> login();
}
