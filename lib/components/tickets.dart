import 'package:flutter/material.dart';

class ticketComp extends StatelessWidget {
  final String type;
  final String price;
  const ticketComp({
    required this.type,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
