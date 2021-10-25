import 'package:kps/features/authentication/data/models/authorization_token_response.dart';
import 'package:kps/features/login/domain/entities/login_configuration_entity.dart';
import 'package:kps/features/login/domain/repositories/login_repository.interface.dart';

class LoginRepositoryImpl implements LoginRepository {
  late LoginConfigurationEntity _loginConfiguration;

  LoginRepositoryImpl({required LoginConfigurationEntity loginConfiguration}) {
    _loginConfiguration = loginConfiguration;
  }

  @override
  Future<AuthorizationTokenResponse?> login() async {
    try {
      // final request = AuthorizationTokenRequest(
      //   _loginConfiguration.clientId,
      //   _loginConfiguration.redirectUrl,
      //   issuer: _loginConfiguration.issuer,
      //   additionalParameters: {
      //     'audience': _loginConfiguration.additionalAudience
      //   },
      //   scopes: _loginConfiguration.scopes,
      // );
      // final AuthorizationTokenResponse? result =
      //     await _appAuth.authorizeAndExchangeCode(request);
      // if (result != null) {
      //   return result;
      // }

      final AuthorizationTokenResponse result = AuthorizationTokenResponse(
          accessToken: "a1234", refreshToken: "r1234");
      return result;
    } catch (error) {
      return null;
    }
  }
}
