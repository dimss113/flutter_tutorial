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
    backgroundColor: Colors.brown[900],
    appBar: AppBar(
      title: const Text('Ninja ID Card'),
      centerTitle: true,
      backgroundColor: Colors.brown[600],
      elevation: 0.0,
    ),
    body: const Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/pict_1.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey,
          ),
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Killer Bee',
            style: TextStyle(
              color: Color.fromARGB(255, 136, 126, 92),
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '8',
            style: TextStyle(
              color: Color.fromARGB(255, 136, 126, 92),
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 194, 184, 184),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'dimasfadilah20@gmail.com',
                style: TextStyle(
                  color: Color.fromARGB(255, 194, 184, 184),
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          )
        ],
      ),
    )
  );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}