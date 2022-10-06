import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String messageConsult;
  final String messageLink;
  final String route;

  const Labels(
      {Key? key,
      required this.messageConsult,
      required this.messageLink,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          messageConsult,
          style: const TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
          child: Text(
            messageLink,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 17.5,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
