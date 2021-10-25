class LoginConfigurationEntity {
  final String clientId;
  final String redirectUrl;
  final String additionalAudience;
  final String issuer;
  final List<String> scopes;

  LoginConfigurationEntity(
      {required this.clientId,
      required this.redirectUrl,
      required this.additionalAudience,
      required this.issuer,
      required this.scopes});
}
