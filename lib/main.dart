import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wood_fed_oficial/pages/home_page.dart';
import 'package:wood_fed_oficial/pages/map_page.dart';
import 'package:wood_fed_oficial/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Poyecto Wood Fed',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'map': (_) => MapPage(),
        },
        theme: ThemeData(
            primaryColor: Colors.red,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.red,
            )),
      ),
    );
  }
}
