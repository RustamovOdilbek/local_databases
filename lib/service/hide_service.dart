import 'package:hive/hive.dart';
import 'package:local_databases/model/user2.dart';

import '../model/user1.dart';
import '../model/user_model.dart';

class HiveService {

  static var box = Hive.box("pdp_online");

  static void storeUser(User user) async {
    box.put("user", user.toJson());

  }

  static User loadUser() {
    var user = User.fromJson(box.get('user')!!);
    return user;
  }

  static void removeUser() async {
    box.delete('user');
  }

  static void storeUser1(User1 user) async {
    box.put("user1", user.toJson());

  }

  static User1 loadUser1() {
    var user = User1.fromJson(box.get('user1')!!);
    return user;
  }

  static void removeUser1() async {
    box.delete('user1');
  }

  static void storeUser2(User2 user) async {
    box.put("user2", user.toJson());

  }

  static User2 loadUser2() {
    var user = User2.fromJson(box.get('user2')!!);
    return user;
  }

  static void removeUser2() async {
    box.delete('user2');
  }
}