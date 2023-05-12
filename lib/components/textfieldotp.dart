import 'package:flutter/material.dart';
import 'package:transitway/utils/env.dart';

class textFieldBoxOTP extends StatefulWidget {
  const textFieldBoxOTP({super.key});

  @override
  State<textFieldBoxOTP> createState() => _textFieldBoxOTPState();
}

class _textFieldBoxOTPState extends State<textFieldBoxOTP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          //must add controller
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 22),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            fillColor: Color(0xFFE8E8E8),
            filled: true,
          ),
        ),
      ],
    );
  }
}
