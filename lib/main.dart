import 'package:collection_proys/src/ui/pages/cv/cv_page.dart';
import 'package:collection_proys/src/ui/pages/explication/explication_page.dart';
import 'package:collection_proys/src/ui/pages/home/home_page.dart';
import 'package:collection_proys/src/ui/pages/proyecto1/proyecto1_page.dart';

import 'package:collection_proys/src/ui/pages/proyecto2/proyecto2_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collection Projects',
      //home: CVPage(),
      initialRoute: 'home',
      routes: {
        '/' : (BuildContext context) => ExplicationPage(),
        'home' : (BuildContext context) => HomePage(),
        'proyecto1' : (BuildContext context) => Proyecto1Page(),
        'proyecto2' : (BuildContext context) => Proyecto2Page(),
        'cv' : (BuildContext context) => CVPage(),
      },
    );
  }
}