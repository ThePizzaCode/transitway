import 'package:flutter/material.dart';
import 'package:transitway/utils/env.dart';

class ticketObject extends StatefulWidget {
  const ticketObject({super.key});

  @override
  State<ticketObject> createState() => _ticketObjectState();
}

class _ticketObjectState extends State<ticketObject> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            color: lightGrey, borderRadius: BorderRadius.circular(17)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Expira la:',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '12:45',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text('Toate liniile'),
                  Text('Abonament lunar'),
                  Text('1 zi'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
