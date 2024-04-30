import 'package:flutter/material.dart';

class GTP extends StatefulWidget {
  const GTP({super.key});

  @override
  State<GTP> createState() => _GTPState();
}

class _GTPState extends State<GTP> {
  static const Color onTitlesCream = Color.fromRGBO(246, 224, 211, 1);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 15, color: onTitlesCream),
          ),
          child: const Text(
            'Bienvenido a Greater-Than Polynomial',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ));
  }
}
