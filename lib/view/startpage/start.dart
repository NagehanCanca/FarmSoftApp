import 'package:flutter/material.dart';
import '../menu/navbar.dart';
import '../startpage/view/search.view.dart';

class StartPage extends StatelessWidget {
  final bool isLoggedIn;

  const StartPage({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('FarmSoft'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: isLoggedIn
                  ? const AnimalSearchBox()
                  : const Text('Giriş yapılmadı'), // Giriş yapılmadıysa mesaj göster
            ),
          ],
        ),
      ),
    );
  }
}
