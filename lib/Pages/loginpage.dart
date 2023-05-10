import 'package:flutter/material.dart';
import 'package:transitway/utils/env.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: CrayolaYellow,
            image: DecorationImage(
              image: AssetImage("assets/map.png"),
              fit: BoxFit.cover,
            )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 360),
                      child: Text(
                        'transitway',
                        style: TextStyle(
                          fontSize: 50,
                          color: TealishSea,
                          fontFamily: 'Blippo',
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Transport made easy',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Fii înaintea tuturor, vezi programul mijloacelor de transport în comun și cumpără bilete, totul într-o singură aplicație!',
                      style: TextStyle(fontSize: 16, fontFamily: 'Gilroy'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: TealishSea,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: TravelOrange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Continuă fără cont',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF795000),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
