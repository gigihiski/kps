import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/webview/presentation/pages/webview_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static String tag = "profile-page";

  Widget buildMenuTitle(String title) {
    return Container(
        padding: const EdgeInsets.only(bottom: 5.0, left: 10.0),
        child: Text(title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold)),
        color: Colors.white);
  }

  Widget buildMenuTitleHeader(String title) {
    return Container(
        color: Colors.white,
        child: Text(title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.bold)),
        padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0),
        margin: const EdgeInsets.only(top: 10.0));
  }

  Widget buildAppVersion(String title, String subTitle) {
    return Container(
        child: Row(children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal)),
          Text(subTitle,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold))
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0));
  }

  Widget buildProfileItem(BuildContext context, String title, IconData icon) {
    return GestureDetector(
      child: Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(icon, color: Colors.grey),
            title: Text(title,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.grey, size: 15.0),
          )),
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebviewPage(
                title: "Customer Support", url: "https://flutter.dev"),
          ),
        );
      },
    );
  }

  Widget buildKPSID(BuildContext context, String qr) {
    final qrButton = Expanded(
        child: Padding(
            child: ElevatedButton(
                child: Row(
                  children: const [
                    Icon(Icons.qr_code, color: Colors.black),
                    Padding(
                        child: Text("QR Code",
                            style: TextStyle(color: Colors.black)),
                        padding: EdgeInsets.only(left: 10.0))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                    elevation: 0,
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            padding: const EdgeInsets.only(right: 5.0)));

    final barcodeButton = Expanded(
        child: Padding(
            child: ElevatedButton(
                child: Row(
                  children: const [
                    Icon(Icons.qr_code, color: Colors.black),
                    Padding(
                        child: Text("Loyalty Code",
                            style: TextStyle(color: Colors.black)),
                        padding: EdgeInsets.only(left: 10.0))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                    elevation: 0,
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            padding: const EdgeInsets.only(left: 5.0)));

    return Container(
        padding: const EdgeInsets.only(
            bottom: 15.0, left: 10.0, right: 10.0, top: 5.0),
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
            children: [qrButton, barcodeButton],
            mainAxisAlignment: MainAxisAlignment.spaceBetween));
  }

  Widget buildKPSPointItem(
      BuildContext context, String title, String subTitle, IconData icon) {
    return GestureDetector(
      child: Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(icon, color: Colors.grey),
            title: Text(title,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            trailing: Text(subTitle,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold)),
          )),
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebviewPage(
                title: "Customer Support", url: "https://flutter.dev"),
          ),
        );
      },
    );
  }

  Widget buildSignOutButton(String title) {
    return Container(
        child: ElevatedButton(
            child: Text(title),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Constants.secondaryColor,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold))),
        margin: const EdgeInsets.only(
            bottom: 30.0, left: 20.0, right: 20.0, top: 10.0));
  }

  Widget buildProfileInformation() {
    return Container(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(children: [
              Image.asset("assets/images/profile.png",
                  width: 50.0, height: 50.0),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(children: [
                    Container(
                        child: const Text("Gigih Iski Prasetyawan",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        margin: const EdgeInsets.only(bottom: 5.0)),
                    const Text("+62821-9191-1919",
                        style: TextStyle(color: Colors.grey, fontSize: 11.0))
                  ], crossAxisAlignment: CrossAxisAlignment.start))
            ], mainAxisAlignment: MainAxisAlignment.start)),
        color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.backgroundColor,
            centerTitle: true),
        backgroundColor: Colors.grey[100],
        body: Container(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (_, index) {
                  if (index == 0) return buildMenuTitle("Profile");
                  if (index == 1) return buildProfileInformation();
                  if (index == 2) {
                    return buildKPSPointItem(context, "KPS Club", "Free",
                        Icons.star_border_outlined);
                  }
                  if (index == 3) {
                    return buildKPSPointItem(context, "KPS Points",
                        "1000 Points", Icons.money_outlined);
                  }
                  if (index == 4) return buildMenuTitleHeader("KPS ID");
                  if (index == 5) {
                    return buildKPSID(context, "Change Profile");
                  }
                  if (index == 6) return buildMenuTitleHeader("Account");
                  if (index == 7) {
                    return buildProfileItem(
                        context, "Change Profile", Icons.person_outlined);
                  }
                  if (index == 8) {
                    return buildProfileItem(
                        context, "My Cards", Icons.card_membership_outlined);
                  }
                  if (index == 9) {
                    return buildProfileItem(
                        context, "Promo Code", Icons.price_change_outlined);
                  }
                  if (index == 10) return buildMenuTitleHeader("Security");
                  if (index == 11) {
                    return buildProfileItem(
                        context, "Change Security Code", Icons.lock_outline);
                  }
                  if (index == 12) return buildMenuTitleHeader("About");
                  if (index == 13) {
                    return buildProfileItem(
                        context, "KPS Benefits", Icons.attach_money_outlined);
                  }
                  if (index == 14) {
                    return buildProfileItem(
                        context, "KPS Guideline", Icons.book_outlined);
                  }
                  if (index == 15) {
                    return buildProfileItem(context, "Terms and Conditions",
                        Icons.rule_folder_outlined);
                  }
                  if (index == 16) {
                    return buildProfileItem(
                        context, "Privacy Policy", Icons.security_outlined);
                  }
                  if (index == 17) {
                    return buildProfileItem(context, "Help Centre", Icons.help);
                  }
                  if (index == 18) {
                    return buildAppVersion("Version 1.0.0 (1)", "#pakaiKPSaja");
                  }
                  if (index == 19) {
                    return buildSignOutButton("Sign Out");
                  }
                  return buildProfileItem(
                      context, "Terms and Conditions", Icons.folder_outlined);
                }),
            alignment: Alignment.center));
  }
}
