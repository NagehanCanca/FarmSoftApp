import 'package:farm_soft/services/api.service.dart';
import 'package:farm_soft/utils/global.colors.dart';
import 'package:flutter/material.dart';


class ButtonGlobal extends StatelessWidget {
   ButtonGlobal( this.usernameController, this.passwordController,{super.key});
   TextEditingController usernameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

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
          boxShadow : [
            BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius:10,
            ),
          ],
        ),
        child: const Text('Giriş Yap',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),),
      ),
    );
  }

  Future<void> performLogin(BuildContext context) async {

    try {
      final apiService = APIService(); // apiBaseUrl'i buraya ekle

      final result = await apiService.login(
        usernameController.text,
        passwordController.text,
      );

      if (true) {
        print(result.lastName);
        Navigator.pushReplacementNamed(context, '/anasayfa');
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Giriş Hatası'),
              content: Text('Kullanıcı adı veya şifre yanlış.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Tamam'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Giriş Hatası: $e');
    }
  }
}
