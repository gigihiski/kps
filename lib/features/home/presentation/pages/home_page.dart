import 'package:kps/features/home/presentation/bloc/home_bloc.dart';
import 'package:kps/features/home/presentation/bloc/home_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:kps/features/qrscan/presentation/pages/qrscan_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String tag = "home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeBlocBuilder.build(),
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          child: const Icon(Icons.qr_code_2_outlined),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => QRScanPage()));
          },
          shape: const CircleBorder(
              side: BorderSide(color: Colors.white, width: 4.0)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: HomeBlocBuilder.navigation());
  }
}
