import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

// ignore: camel_case_types
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteListState createState() => _QuoteListState();
}

// ignore: camel_case_types
class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        quote: 'Be yourself; everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(quote: 'So many books, so little time.', author: 'Frank Zappa'),
    Quote(
        quote: 'A room without books is like a body without a soul.',
        author: 'Marcus Tullius Cicero'),
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
                return QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }
                ); // Display the first and second quote
              }).toList(), // Display the third quote
            )
          ],
        ));
  }
}

