import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FarmSoft"),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Sol üst köşede açılır kapanır pencereyi açmak için gerekli işlemler
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Toplam Hayvan Sayısı: 100",
                ),
                SizedBox(width: 20),
                Text(
                  "Grup Sayısı: 5",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Küpe No, Hayvan No",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Arama butonuna basıldığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ),
          // Buraya diğer içerikler eklensin
     ],
      ),
    );
  }
}
