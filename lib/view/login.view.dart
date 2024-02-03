import 'dart:convert';
import 'package:farm_soft/view/widgets/button.global.dart';
import 'package:flutter/material.dart';
import '../services/user.service.dart';
import '../utils/global.colors.dart';
import '../view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'FarmSoft',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Hesabınıza giriş yapın',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                /////Username Input
                TextFormGlobal(
                  controller: usernameController,
                  text: 'Kullanıcı Adı',
                  obscure: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 6),
                /////Password Input
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Şifre',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                // Giriş Butonu
                ButtonGlobal(usernameController, passwordController),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
