import 'package:flutter/material.dart';

class BaitScreen extends StatefulWidget {
  @override
  _BaitScreenState createState() => _BaitScreenState();
}

class _BaitScreenState extends State<BaitScreen> {
  List<String> secilenYemler = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yem Dağıtımı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YemRasyonlariSecimiPage(
                      secilenYemler: secilenYemler,
                    ),
                  ),
                ).then((yeniSecilenYemler) {
                  setState(() {
                    secilenYemler = yeniSecilenYemler;
                  });
                });
              },
              child: const Text('Yem Rasyonlarını Seç'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Seçilen Yemler:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: secilenYemler.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(secilenYemler[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YemRasyonlariSecimiPage extends StatefulWidget {
  final List<String> secilenYemler;

  const YemRasyonlariSecimiPage({required this.secilenYemler});

  @override
  _YemRasyonlariSecimiPageState createState() =>
      _YemRasyonlariSecimiPageState();
}

class _YemRasyonlariSecimiPageState extends State<YemRasyonlariSecimiPage> {
  List<String> yemler = [
    'Yem 1',
    'Yem 2',
    'Yem 3',
    'Yem 4',
  ];

  List<String> secilenYemler = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yem Rasyonlarını Seç'),
      ),
      body: ListView.builder(
        itemCount: yemler.length,
        itemBuilder: (context, index) {
          final yem = yemler[index];
          final bool secili = widget.secilenYemler.contains(yem);

          return ListTile(
            title: Text(yem),
            trailing: IconButton(
              icon: secili ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
              onPressed: () {
                setState(() {
                  if (secili) {
                    secilenYemler.remove(yem);
                  } else {
                    secilenYemler.add(yem);
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, secilenYemler);
        },
        child: Icon(Icons.done),
      ),
    );
  }
}