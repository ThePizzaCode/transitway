import 'package:flutter/material.dart';
import 'package:transitway/utils/env.dart';

class customAddr extends StatefulWidget {
  final String title;
  final String address;
  final IconData icon;
  final bool map;
  const customAddr({
    required this.title,
    required this.address,
    required this.icon,
    required this.map,
  });

  @override
  State<customAddr> createState() => _customAddrState();
}

class _customAddrState extends State<customAddr> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.address,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: darkGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Visibility(
          visible: widget.map == false,
          child: Icon(
            Icons.arrow_forward_ios,
            color: darkGrey,
            size: 20,
          ),
        ),
      ],
    );
  }
}
