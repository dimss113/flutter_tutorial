import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';

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

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              )
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              )
            ),
          ],
        ),
      ),
    );
  }

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
                return quoteTemplate(quote); // Display the first and second quote
              }).toList(), // Display the third quote
            )
          ],
        ));
  }
}
