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
    body: Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      color: Colors.brown[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello dimas fadilah!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
              ),
            ),
            Image.network('https://images.pexels.com/photos/18138254/pexels-photo-18138254/free-photo-of-woman-in-a-dress-dancing.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            // Image.asset('assets/pict_1.jpg'),
            const Icon(
              Icons.airport_shuttle,
              color: Colors.lightBlue,
              size: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                print('You clicked me!');
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blue,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)), 
                maximumSize: Size(200, 100)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm),
                  Text('Click me!'),
                ],
              )
            ),
            IconButton(
              onPressed: () {
                print('You clicked me!');
              },
              icon: const Icon(Icons.alarm),
              iconSize: 50.0,
              color: Colors.red,
              key: const Key('Alarm'),
            )
          ],
        ),
      ),
    ),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      backgroundColor: Color.fromARGB(255, 179, 148, 141),
      child: Text('Click'),
    ),
  );
  }
}


