import 'package:chatapp/helpers/database_helpers.dart';
import 'package:chatapp/model/user.dart';
import 'package:flutter/material.dart';

/// This is the class to fetch all user to show it in users page of botton nav bar
class UserViewModel extends ChangeNotifier {
  final DatabaseHelper _databasehelper = DatabaseHelper();
  Future<List<User>> getAllUsers(int userid) async {
    //print(_databasehelper.getAllUsers(userid));

    return await _databasehelper.getAllUsers(userid);
  }
}
