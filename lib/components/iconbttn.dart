import 'package:flutter/material.dart';

class iconBttn extends StatelessWidget {
  final int bttnColor;
  final String text;
  final IconData icon;
  const iconBttn({
    required this.bttnColor,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Color(bttnColor),
                borderRadius: BorderRadius.circular(7)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, color: Colors.white),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
