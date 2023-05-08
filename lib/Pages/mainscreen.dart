import 'package:flutter/material.dart';
import 'package:transitway/components/routesearch.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.amber),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Transitway',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.person),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  routesearch(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
