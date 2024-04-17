// ignore_for_file: avoid_print, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial/services/world_time.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    print(instance.location);
    print(instance.flag);
    // setState(() {
    //   time = instance.time;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  void getData() async {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    http.Response response = await http.get(url);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['userId']);
  }

  void getTimeOld() async {
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Jakarta'));
    Map data = jsonDecode(response.body);
    print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    print(datetime);
    print(offset);

    // create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print('initState function ran');
    // getData();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: SpinKitPouringHourGlass(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
