
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial/pages/choose_location.dart';
import 'package:flutter_tutorial/pages/home.dart';
import 'package:flutter_tutorial/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // Tambahkan initial route ke /home
    routes: {
      '/': (_) => const Loading(),
      '/home': (_) => const Home(),
      '/location': (_) => const ChooseLocation(),
    }
  ));
}