import 'dart:convert';

import 'package:farm_soft/services/user.service.dart';
import 'package:farm_soft/utils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user.model.dart';


class ButtonGlobal extends StatelessWidget {
  ButtonGlobal(this.usernameController, this.passwordController, {super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late UserModel user;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        performLogin(context);
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text('Giriş Yap',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),),
      ),
    );
  }

  Future<void> performLogin(BuildContext context) async {

    final userService = UserService();

    user = await userService.login(
      usernameController.text,
      passwordController.text,
    );
    if (user is UserModel) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("loggedUser", json.encode(user.toJson()));

      final SharedPreferences prefs2 = await SharedPreferences.getInstance();
      var usersad = prefs2.getString("loggedUser");

      if (usersad is String) {
        UserModel asda = UserModel.fromJson(jsonDecode(usersad));
      }

      Navigator.pushReplacementNamed(context, '/anasayfa');
    }
    else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Hata Giriş'),
            content: Text('Yanlış şifre!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/anasayfa');
                },
                child: Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }
}