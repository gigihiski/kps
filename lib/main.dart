import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kps/features/authentication/presentation/bloc/authentication_bloc_builder.dart';
import 'package:kps/features/authentication/presentation/bloc/authentication_bloc_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AuthenticationBlocProvider.provide(child: const KPSApp()));
}

class KPSApp extends StatelessWidget {
  const KPSApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KPS Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthenticationBlocBuilder.build(),
    );
  }
}
