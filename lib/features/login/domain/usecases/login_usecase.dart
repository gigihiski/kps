import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/authentication/data/models/authorization_token_response.dart';
import 'package:kps/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:kps/features/login/domain/repositories/login_repository.interface.dart';

class LoginUseCase {
  late LoginRepository _loginRepository;
  late AuthenticationUseCase _authenticationUseCase;

  LoginUseCase(
      {required LoginRepository loginRepository,
      required AuthenticationUseCase authenticationUseCase}) {
    _loginRepository = loginRepository;
    _authenticationUseCase = authenticationUseCase;
  }

  Future<AuthorizationTokenResponse?> authorize() async {
    final result = await _loginRepository.login();
    if (result != null) {
      await _authenticationUseCase.saveToken(result.accessToken);
      return result;
    }
    return null;
  }

  Map<String, dynamic> parseIdToken(String idToken) {
    final parts = idToken.split(r'.');
    assert(parts.length == 3);

    return jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
  }

  Future<Map<String, dynamic>> getUserDetails(String accessToken) async {
    final Uri url =
        Uri(host: 'https://${Constants.authDomain}', path: '/userinfo');
    final response = await http.get(
      url,
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to get user details');
    }
  }
}
