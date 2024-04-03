import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));  
}

// ignore: camel_case_types
class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

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
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          ninjaLevel += 1;
        });
      },
      backgroundColor: Colors.grey[600],
      child: const Icon(Icons.add),
    ),
    body:  Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/pict_1.jpg'),
              radius: 40.0,
            ),
          ),
          const Divider(
            height: 90.0,
            color: Colors.grey,
          ),
          const Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Killer Bee',
            style: TextStyle(
              color: Color.fromARGB(255, 136, 126, 92),
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            '$ninjaLevel',
            style:const  TextStyle(
              color: Color.fromARGB(255, 136, 126, 92),
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Row(
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