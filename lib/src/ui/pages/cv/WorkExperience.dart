import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemOrg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class WorkExperience extends StatelessWidget {
  const WorkExperience({
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
              'Experiencia Laboral',
              overflow: TextOverflow.ellipsis,
              style: this.isPrimary
                ? kTextStyleTitle
                : kTextStyleTitle1,
            ),
            DividerSection(
              width: this.width,
              height: this.height,
              isPrimary: this.isPrimary,
            ),
            ItemOrg(
              asset: 'assets/logo/FIEC.png',
              puesto: 'Ayudante de docencia',
              periodo: 'May,2020 - Feb,2021',
              org: 'ESPOL - FIEC',
              isPrimary: this.isPrimary,
            ),
            ItemOrg(
              asset: 'assets/logo/UEPIB.png',
              puesto: 'Ayudante de docencia y Soporte Técnico',
              periodo: 'Oct,2020 - Mar,2021',
              org: 'U. E. P. Instituto Británico',
              isPrimary: this.isPrimary,
            ),
            ItemOrg(
              asset: 'assets/logo/ECUA.png',
              puesto: 'Voluntario',
              periodo: 'Ene,2020 - Jun,2020',
              org: 'Ecuador Solidario',
              isPrimary: this.isPrimary,
            ),

            // References
            Text(
              'Referencias',
              overflow: TextOverflow.ellipsis,
              style: this.isPrimary
                ? kTextStyleTitle
                : kTextStyleTitle1,
            ),
            DividerSection(
              width: this.width,
              height: this.height,
              isPrimary: this.isPrimary,
            ),
            ItemList(
              iconData: FontAwesomeIcons.addressCard,
              title: 'M. Sc. en Desarrollo de Software\nRodrigo Saraguro',//, Ing. Sistemas Informáticos y Computación
              description: ['rasaraguro@gmail.com','+593 989740591',], 
              qualification: null,
              isPrimary: this.isPrimary,
            ),
            ItemList(
              iconData: FontAwesomeIcons.addressCard,
              title: 'Abg. Angélica Castillo',
              description: ['angelikastillos@hotmail.com','+593 988578802',], 
              qualification: null,
              isPrimary: this.isPrimary,
            ),
            ItemList(
              iconData: FontAwesomeIcons.addressCard,
              title: 'Ing. en Computación e Informática\nAraceli Olvera',
              description: ['aracelyolvera_2011@hotmail.com','+593 993920423',], 
              qualification: null,
              isPrimary: this.isPrimary,
            ),
          ],
        ),
      ),
    );
  }
}