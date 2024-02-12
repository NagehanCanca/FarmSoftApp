import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.name,
    required this.profession,
  }): super(key: key);

  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        'Nagehan',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        'Aktif Kullanıcı',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}