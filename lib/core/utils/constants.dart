import 'package:flutter/material.dart';
import 'secrets.dart';

@immutable
class Constants {
  /// Application Settings
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFF2196F3);
  static const String logoURL = "assets/images/logo.png";

  /// Secure Settings
  static const String authenticationStorageKey = "refresh_token";

  /// Auth0 Secret Settings
  static const String authDomain = auth0Domain;
  static const String authClientID = auth0ClientID;
  static const String authRedirectURI = auth0RedirectURI;
  static const String authAdditionalAudience = auth0AdditionalAudience;
}
