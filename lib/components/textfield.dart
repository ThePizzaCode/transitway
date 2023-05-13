import 'package:flutter/material.dart';
import 'package:transitway/utils/env.dart';

class textFieldBox extends StatefulWidget {
  const textFieldBox({super.key});

  @override
  State<textFieldBox> createState() => _textFieldBoxState();
}

class _textFieldBoxState extends State<textFieldBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          keyboardType: TextInputType.phone,
          //must add controller
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 22),
          decoration: InputDecoration(
            prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '+40 ',
                  style: TextStyle(fontSize: 22),
                )),
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
