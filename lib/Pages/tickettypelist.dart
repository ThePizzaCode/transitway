import 'package:flutter/material.dart';
import 'package:transitway/Pages/navbar.dart';
import 'package:transitway/Pages/ticketselectedone.dart';
import 'package:transitway/Pages/ticketspage.dart';
import 'package:transitway/components/tickets.dart';
import 'package:transitway/utils/env.dart';

class ticketTypeList extends StatefulWidget {
  const ticketTypeList({super.key});

  @override
  State<ticketTypeList> createState() => _ticketTypeListState();
}

class _ticketTypeListState extends State<ticketTypeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => navBar(pageIndex: 2)),
                        );
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Cumpara bilet',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bilete',
                    style: TextStyle(
                        color: darkGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: darkGrey,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ticketSelectedOne(
                            number: 4,
                            titlu: 'Bilet 1 Calatorie',
                          )),
                );
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ticketSelectedOne(
                              number: 2,
                              titlu: 'Bilet 2 Calatorii',
                            )),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ticketComp(
                    type: '1 Calatorie',
                    price: '2,5 lei',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '2 Calatorii',
                price: '5 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '1 Zi',
                price: '6 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abonamente saptamanale',
                    style: TextStyle(
                        color: darkGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: darkGrey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '1 Linie',
                price: '20 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '2 Linii',
                price: '25 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: 'Toate liniile',
                price: '28 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abonamente lunare',
                    style: TextStyle(
                        color: darkGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: darkGrey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '1 Linie',
                price: '85 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: '2 Linii',
                price: '110 lei',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ticketComp(
                type: 'Toate liniile',
                price: '122 lei',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
