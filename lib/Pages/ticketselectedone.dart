import 'package:flutter/material.dart';
import 'package:transitway/Pages/tickettypelist.dart';
import 'package:transitway/components/searchdropdown.dart';

class ticketSelectedOne extends StatefulWidget {
  final String titlu;
  final int number;

  const ticketSelectedOne({
    required this.titlu,
    required this.number,
  });

  @override
  State<ticketSelectedOne> createState() => _ticketSelectedOneState();
}

class _ticketSelectedOneState extends State<ticketSelectedOne> {
  List<Widget> dropdowns = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.number; i++) {
      dropdowns.add(searchableDropdown(
        titlu: 'Traseul ${i + 1}',
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ticketTypeList()),
                        );
                      },
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        widget.titlu,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: dropdowns,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
