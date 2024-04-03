import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));  
}

// ignore: camel_case_types
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Dimas Fadilah'),
      centerTitle: true,
      backgroundColor: Colors.brown[600],
    ),
    body: Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image.asset('assets/pict_1.jpg')
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: const Text('2'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.amberAccent,
            child: const Text('3'),
          ),
        ),
      ],
    ),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      backgroundColor: Color.fromARGB(255, 179, 148, 141),
      child: Text('Click'),
    ),
  );
  }
}


