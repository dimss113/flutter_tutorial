import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 1;

  void getData() async {
    // simulate a network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Dimas';
    });

    // simulate a network request for to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'Dimas is a programmer, and he loves music.';
    });

    print('$username - $bio');
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState function ran');
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    print('build initState function ran');
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 194, 180, 180),
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is $counter'),
        ));
  }
}
