import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../model/user_model.dart';
import '../service/hide_service.dart';
import '../service/log_service.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();

    var user = User("101", "pdp@gmail.com", "1123456");
    HiveService.storeUser(user);
    var user2 = HiveService.loadUser();
    LogService.i(user2.toJson().toString());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database'),
      ),
      body: Container(
        child: Text('Database'),
      ),
    );
  }
}
