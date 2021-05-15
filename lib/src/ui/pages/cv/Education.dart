import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemOrg.dart';
import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({
    Key key,
    this.width,
    this.height, 
    this.isPrimary = true,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: this.isPrimary 
        ? kPrimaryColor
        : kSecondaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Educación',
              style: this.isPrimary 
                ? kTextStyleTitle
                : kTextStyleTitle1,
            ),
            DividerSection(
              width: this.width, 
              height: this.height
            ),
            ItemOrg(
              asset: 'assets/logo/ESPOL.png',
              puesto: 'Ing. en Ciencias Computacionales',
              org: 'ESPOL',
              periodo: 'Actualmente en curso',
            ),
            ItemOrg(
              asset: 'assets/logo/AIIP.png',
              puesto: 'Bach. Técnico en Aplicaciones Informáticas',
              org: 'U. E. Ati II Pillahuaso',
              periodo: '2016',
            ),
            Text(
              'Cursos',
              style: kTextStyleTitle,
            ),
            DividerSection(width: this.width, height: this.height),
            ItemList(
              iconData: Icons.menu_book,
              title: 'Microsoft Office 365', 
              qualification: null,
            ),
            ItemList(
              iconData: Icons.car_rental,
              title: 'Licencia de manejo',
              description: ['Tipo B'], 
              qualification: null,
            ),
            Text(
              'Idiomas',
              style: kTextStyleTitle,
            ),
            DividerSection(width: this.width, height: this.height,),
            ItemList(
              title: 'Español', 
              qualification: 5.0,
            ),
            ItemList(
              title: 'Ingles', 
              description: ['Intermedio, B1'],
              qualification: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}

