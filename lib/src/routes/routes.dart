import 'package:collection_proys/src/ui/pages/cv/cv_page.dart';
import 'package:collection_proys/src/ui/pages/explication/explication_page.dart';
import 'package:collection_proys/src/ui/pages/home/home_page.dart';
import 'package:collection_proys/src/ui/pages/proyecto1/proyecto1_page.dart';
import 'package:collection_proys/src/ui/pages/proyecto2/proyecto2_page.dart';
import 'package:flutter/material.dart';

final routes = <_Route>[
  _Route(Icons.description, 'Explication', '/', ExplicationPage()),
  _Route(Icons.home, 'Home', 'home', HomePage()),
  _Route(Icons.local_hospital_outlined, 'Proyecto 1', 'proyecto1', Proyecto1Page()),
  _Route(Icons.airplanemode_active,'Proyecto 2', 'proyecto2', Proyecto2Page()),
  _Route(Icons.description_rounded, 'Curriculum Vitae', 'cv', CVPage())
  
];

class _Route {
  final IconData iconData;
  final String title;
  final String route;
  final Widget page;

  _Route(
    this.iconData, 
    this.title, 
    this.route, 
    this.page
  );


  
}