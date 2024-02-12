import 'package:farm_soft/core/extension/context.extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AnimalSearchBox extends StatelessWidget {
  const AnimalSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Icon(Icons.search),
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelStyle: context.textTheme.subtitle1,
              labelText: "Arama yapmak için buraya yazınız.",
              suffixIcon: IconButton(
                onPressed: () {
                  // Servise yönlendirme işlemi burada yapılacak
                },
                padding: EdgeInsets.zero,
                icon: Observer(
                  builder: (_) {
                    return const Icon(Icons.lock);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}