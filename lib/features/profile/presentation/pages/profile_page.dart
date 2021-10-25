import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static String tag = "profile-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Text("Profile Page"), alignment: Alignment.center));
  }
}
