import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: Quote(),
  ));
}

// ignore: camel_case_types
class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteState createState() => _QuoteState();
}

// ignore: camel_case_types
class _QuoteState extends State<Quote> {

  List<String> quotes = [
    'Be yourself; everyone else is already taken.',
    'So many books, so little time.',
    'A room without books is like a body without a soul.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Quote'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Column(
              children: quotes.map((quote) {
                return Text(quote);
              }).toList(), // Display the third quote
            )
          ],
        ));
  }
}
