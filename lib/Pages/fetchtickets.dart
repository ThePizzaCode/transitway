import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BusTicket {
  final String from;
  final String to;
  final double price;

  BusTicket({
    required this.from,
    required this.to,
    required this.price,
  });

  factory BusTicket.fromJson(Map<String, dynamic> json) {
    return BusTicket(
      from: json['from'],
      to: json['to'],
      price: json['price'].toDouble(),
    );
  }
}

class BusTicketListPage extends StatefulWidget {
  @override
  _BusTicketListPageState createState() => _BusTicketListPageState();
}

class _BusTicketListPageState extends State<BusTicketListPage> {
  List<BusTicket> _tickets = [];

  @override
  void initState() {
    super.initState();
    _fetchTickets();
  }

  Future<void> _fetchTickets() async {
    final response = await http.get(Uri.parse('https://example.com/tickets'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        _tickets =
            List.from(jsonData).map((e) => BusTicket.fromJson(e)).toList();
      });
    } else {
      throw Exception('Failed to fetch tickets');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Tickets'),
      ),
      body: _tickets.isNotEmpty
          ? ListView.builder(
              itemCount: _tickets.length,
              itemBuilder: (context, index) {
                final ticket = _tickets[index];
                return ListTile(
                  title: Text('${ticket.from} to ${ticket.to}'),
                  subtitle: Text('\$${ticket.price}'),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
