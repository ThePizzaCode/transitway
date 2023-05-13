import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:transitway/components/tickets.dart';

class searchableDropdown extends StatefulWidget {
  final String titlu;
  const searchableDropdown({
    required this.titlu,
  });

  @override
  State<searchableDropdown> createState() => _searchableDropdownState();
}

List<String> busLines = ["35B", "40", "44", "102", "101", "1D", "2", "30"];

class _searchableDropdownState extends State<searchableDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            widget.titlu,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        DropdownSearch(
          items: busLines,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Alege un traseu",
            ),
          ),
          onChanged: print,
        ),
      ],
    );
  }
}
