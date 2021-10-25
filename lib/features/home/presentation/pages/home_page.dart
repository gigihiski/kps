import 'package:kps/features/home/presentation/bloc/home_bloc.dart';
import 'package:kps/features/home/presentation/bloc/home_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String tag = "home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeBlocBuilder.build(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.qr_code_2_outlined),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: HomeBlocBuilder.navigation());
  }
}
