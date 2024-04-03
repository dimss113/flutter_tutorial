import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  
  final Quote quote;
  final Function delete;
  const QuoteCard({super.key, 
    required this.quote, required this.delete
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.quote,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            const SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
            )),
            const SizedBox(height: 8.0),
            ElevatedButton.icon(
                onPressed: delete as void Function()?,
              icon: const Icon(Icons.delete), 
              label: const Text('delete quote')
            )
          ],
        ),
      ),
    );
  }
}
