import 'package:collection_proys/src/ui/pages/cv/cv_page.dart';
import 'package:collection_proys/src/ui/pages/explication/explication_page.dart';
import 'package:collection_proys/src/ui/pages/home/home_page.dart';
import 'package:collection_proys/src/ui/pages/proyecto1/proyecto1_page.dart';
import 'package:collection_proys/src/ui/pages/proyecto2/proyecto2_page.dart';

import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

void main() {
  
    // configureApp();  
  
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collection Projects',
      //home: CVPage(),
      initialRoute: '/cv',
      routes: {
        '/': (BuildContext context) => ExplicationPage(),
        '/home': (BuildContext context) => HomePage(),
        '/proyecto1': (BuildContext context) => Proyecto1Page(),
        '/proyecto2': (BuildContext context) => Proyecto2Page(),
        '/cv': (BuildContext context) => CVPage(),
      },
    );
  }
}
