import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: 150,
      child: Column(
        children: [
          const Image(image: AssetImage("images/tag-logo.png")),
          const SizedBox(
            height: 10,
          ),
          Text(
            this.titulo,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
