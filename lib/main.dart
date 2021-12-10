import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/screen/home_screen.dart';
import 'package:wood_fed_oficial/screen/add_screen.dart';
import 'package:wood_fed_oficial/screen/maps_screen.dart';
//import 'package:wood_fed_oficial/screen/show_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poyecto Wood Fed',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'map': (_) => MapPage(),
        'maps': (_) => MapsPage(),
      },
      theme: ThemeData(
          primaryColor: Colors.red,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red,
          )),
    );
  }
}
