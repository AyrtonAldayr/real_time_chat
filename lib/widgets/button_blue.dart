import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ButtonBlue({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        child: Container(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ));
  }
}
