import 'package:farm_soft/view/widgets/bait.screen.dart';
import 'package:flutter/material.dart';

import '../widgets/animal.screen.dart';
import '../widgets/weighing.screen.dart';

class SideMenuTitle extends StatelessWidget {
  const SideMenuTitle({
    Key? key,
  }) : super(key: key);

  final Divider customDivider = const Divider(
    color: Colors.white24,
    height: 1,
    indent: 80,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        ListTile(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => WeighingScreen(),
            //   ),
            // );
          },
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.line_weight),
          ),
          title: const Text("Tartı İşlemleri"),
        ),
        customDivider,
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BaitScreen(), 
              ),
            );
          },
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.food_bank),
          ),
          title: const Text("Yem Dağıtım"),
        ),
        customDivider,
        ListTile(
          onTap: () {},
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.vaccines),
          ),
          title: const Text("Aşı"),
        ),
        customDivider,
        ListTile(
          onTap: () {},
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.local_hospital),
          ),
          title: const Text("Tedavi İşlemleri"),
        ),
        customDivider,
        ListTile(
          onTap: () {},
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.analytics),
          ),
          title: const Text("İstatistikler"),
        ),
        // ExpansionTile kullanarak alt başlıkları oluşturulur.
        ExpansionTile(
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.settings_input_component),
          ),
          title: const Text("Padok İstatistiği"),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48),
              child: ListTile(
                onTap: () {},
                title: const Text("Padok No:1"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48),
              child: ListTile(
                onTap: () {},
                title: const Text("Padok No:2"),
              ),
            ),
          ],
        ),
        customDivider,
        ExpansionTile(
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.food_bank_outlined),
          ),
          title: const Text("Yem İstatistiği"),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48),
              child: ListTile(
                onTap: () {},
                title: const Text("1 Numaralı Padok"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48),
              child: ListTile(
                onTap: () {},
                title: const Text("2 Numaralı Padok"),
              ),
            ),
          ],
        ),
        customDivider,
        ListTile(
          onTap: () {},
          leading: const SizedBox(
            height: 34,
            width: 34,
            child: Icon(Icons.help),
          ),
          title: const Text("Hayvan Kartı"),
        ),
      ],
    );
  }
}
