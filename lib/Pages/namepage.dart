import 'package:flutter/material.dart';
import 'package:transitway/Pages/namepage.dart';
import 'package:transitway/Pages/otp.dart';
import 'package:transitway/Pages/phonenumber.dart';
import 'package:transitway/components/textfieldotp.dart';
import 'package:transitway/utils/env.dart';

class namePage extends StatefulWidget {
  const namePage({super.key});

  @override
  State<namePage> createState() => _namePageState();
}

class _namePageState extends State<namePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => otpPage()),
                                );
                              },
                              child: Icon(Icons.arrow_back_ios_new)),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Introdu numele si prenumele',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Nume',
                      style: TextStyle(color: darkGrey, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                      child: textFieldBoxOTP(),
                    ),
                    Text(
                      'Prenume',
                      style: TextStyle(color: darkGrey, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: textFieldBoxOTP(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0, left: 30, right: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => namePage()),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFF2E01C8),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Center(
                    child: Text(
                      'Continua',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
