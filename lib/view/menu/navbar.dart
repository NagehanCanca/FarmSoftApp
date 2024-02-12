import 'package:farm_soft/view/menu/info.card.dart';
import 'package:farm_soft/view/menu/side.menu.title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Colors.blue,
        padding: const EdgeInsets.only(top: 30),
        child: const Column(
          children: [
            InfoCard(
              name: "Nagehan",
              profession: "",
            ),
            SideMenuTitle()
          ],
        ),
      )
    );
  }
}
