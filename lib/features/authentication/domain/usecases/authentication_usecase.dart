import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kps/core/utils/constants.dart';

@immutable
class AuthenticationUseCase {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  Future<bool> isAuthorized() async {
    final storedRefreshToken =
        await secureStorage.read(key: Constants.authenticationStorageKey);
    return (storedRefreshToken != null) ? true : false;
  }

  Future<void> saveToken(String token) async {
    await secureStorage.write(
        key: Constants.authenticationStorageKey, value: token);
  }

  Future<void> removeToken() async {
    await secureStorage.delete(
      key: Constants.authenticationStorageKey,
    );
  }
}
