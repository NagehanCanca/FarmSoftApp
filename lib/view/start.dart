import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FarmSoft',
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FarmSoft'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Hayvan Durumları'),
              onTap: () {
                // "Hayvan Durumları" butonuna basıldığında yapılacak işlemler
                print("Hayvan Durumları");
              },
            ),
            ListTile(
              title: Text('Kullanıcı Yetkileri'),
              onTap: () {
                // "Kullanıcı Yetkileri" butonuna basıldığında yapılacak işlemler
                print("Kullanıcı Yetkileri");
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          children: <Widget>[
            Image.asset(
              'asset/images/Loya.png',
              width: 70,
              height: 70,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 16),
                  Text(
                    "Küpe No, Hayvan Adı ...",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
