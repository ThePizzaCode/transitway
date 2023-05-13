import 'package:flutter/material.dart';
import 'package:transitway/components/customaddr.dart';
import 'package:transitway/components/iconbttn.dart';
import 'package:transitway/utils/env.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          ///Profile pic
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: Container(
                height: 170,
                width: 170,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
          ),

          ///nume
          Text(
            'Stanciu Gubs',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          ///nr de telefon
          Text(
            '+40735443699',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: darkGrey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: darkGrey,
            ),
          ),

          ///acasa
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: customAddr(
              title: 'Acasa',
              address: 'Str. Gheorghe Doja 23',
              icon: Icons.home,
              map: false,
            ),
          ),

          ///serviciu
          customAddr(
            title: 'Serviciu',
            address: 'Alege o adresa',
            icon: Icons.work,
            map: false,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: darkGrey,
            ),
          ),

          ///ajutor
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: iconBttn(
              bttnColor: 0xFF1FD982,
              text: 'Ajutor',
              icon: Icons.help,
            ),
          ),

          ///log-out
          iconBttn(
            bttnColor: 0xFFF6493C,
            text: 'Deconecteaza-te',
            icon: Icons.logout_rounded,
          ),
        ],
      ),
    )));
  }
}
