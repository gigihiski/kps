class AuthorizationTokenResponse {
  String accessToken = "";
  String refreshToken = "";

  AuthorizationTokenResponse(
      {required String accessToken, required String refreshToken}) {
    accessToken = accessToken;
    refreshToken = refreshToken;
  }
}
