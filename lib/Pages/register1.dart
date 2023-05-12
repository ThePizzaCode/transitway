import 'package:flutter/material.dart';
import 'package:transitway/components/textfield.dart';

class registerFirst extends StatefulWidget {
  const registerFirst({super.key});

  @override
  State<registerFirst> createState() => _registerFirstState();
}

class _registerFirstState extends State<registerFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            ///Progress bar
            Text(
              'Numar de telefon',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Gilroy',
              ),
            ),
            Text(
              'Completeaza numarul de telefon pentru a-ti putea verifica identitatea',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            textFieldBox(),

            ///Phone number form
            ///
          ]),
        ),
      ),
    );
  }
}
