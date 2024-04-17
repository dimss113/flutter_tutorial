// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDayTime; // true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url})
      : isDayTime = false,
        time = '';

  Future<void> getTime() async {
    try {
      // make the request
      Uri uri = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      http.Response response = await http.get(uri);
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(
          hours: int.parse(offset), minutes: int.parse(offsetMinutes)));

      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20;
      // time = now.toString();
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}

WorldTime instance = WorldTime(
    location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');