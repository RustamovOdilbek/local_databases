import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_databases/pages/home_page.dart';
import 'package:local_databases/pages/sign_in1_page.dart';
import 'package:local_databases/pages/sign_in2_page.dart';
import 'package:local_databases/pages/sign_up1_page.dart';
import 'package:local_databases/pages/sign_up2_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('pdp_online');
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SignIn1Page(),
      routes: {
        SignIn1Page.id: (context) => SignIn1Page(),
        SignUp1Page.id: (context) => SignUp1Page(),
        SignIn2Page.id: (context) => SignIn2Page(),
        SignUp2Page.id: (context) => SignUp2Page()
      },
    );
  }
}
