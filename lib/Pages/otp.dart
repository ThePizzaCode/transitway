import 'package:flutter/material.dart';
import 'package:transitway/Pages/namepage.dart';
import 'package:transitway/Pages/phonenumber.dart';
import 'package:transitway/components/textfieldotp.dart';

class otpPage extends StatefulWidget {
  const otpPage({super.key});

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
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
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => phoneNumber()),
                                );
                              },
                              child: Icon(Icons.arrow_back_ios_new)),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Verifica codul',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Am trimis un cod la',
                      style: TextStyle(color: Color(0xFF6E6E6E), fontSize: 17),
                    ),
                    Text(
                      '+40735443664',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      'Schimba numarul de telefon',
                      style: TextStyle(color: Color(0XFF2E01C8), fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
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
