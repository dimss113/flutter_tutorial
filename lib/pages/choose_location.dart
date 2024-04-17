import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin'),
    WorldTime(location: 'New York', flag: 'usa.svg', url: 'America/New_York'),
    WorldTime(location: 'Jakarta', flag: 'indonesia.png', url: 'Asia/Jakarta'),
    WorldTime(location: 'London', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'Seoul', flag: 'south_korea.webp', url: 'Asia/Seoul'),
    WorldTime(location: 'Sydney', flag: 'australia.webp', url: 'Australia/Sydney'),
    WorldTime(location: 'Tokyo', flag: 'japan.svg', url: 'Asia/Tokyo'),
  ];


  int counter = 1;
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
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () async {
                  await locations[index].getTime();
                  Navigator.pushReplacementNamed(context, '/home', arguments: {
                    'location': locations[index].location,
                    'flag': locations[index].flag,
                    'time': locations[index].time,
                    'isDayTime': locations[index].isDayTime,
                  });
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            );
          },
        )
    );
  }
}
