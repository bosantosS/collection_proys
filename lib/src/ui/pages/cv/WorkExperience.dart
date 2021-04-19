import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemOrg.dart';
import 'package:flutter/material.dart';

import 'DividerSection.dart';

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
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ItemOrg(
                  asset: 'assets/logo/FIEC.png',
                  puesto: 'Ayudante de Docencia',
                  periodo: 'May,2020 - Feb,2021',
                  org: 'ESPOL - FIEC',
                ),
                ItemOrg(
                  asset: 'assets/logo/UEPIB.png',
                  puesto: 'Ayudante de docencia y Soporte Tecnico',
                  periodo: 'Oct,2020 - Mar,2021',
                  org: 'U. E. P. Instituto Britanico',
                ),
                ItemOrg(
                  asset: 'assets/logo/ECUA.png',
                  puesto: 'Voluntario',
                  periodo: 'Ene,2020 - Jun,2020',
                  org: 'Ecuador Solidario',
                ),
              ],
            ),

            // References
            Text(
              'Referencias',
              overflow: TextOverflow.ellipsis,
              style: kTextStyleTitle1,
            ),
            DividerSection(
              width: this.width,
              height: this.height,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                _Reference(
                  nameComplete: 'Ing. El pepe oficial',
                  email: 'elpepeoficial@gmail.com',
                  cellphone: '+593987654321',
                ),
                _Reference(
                  nameComplete: 'Ing. El pepe oficial',
                  email: 'elpepeoficial@gmail.com',
                  cellphone: '+593987654321',
                ),
                _Reference(
                  nameComplete: 'Ing. El pepe oficial',
                  email: 'elpepeoficial@gmail.com',
                  cellphone: '+593987654321',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class _Reference extends StatelessWidget {
  const _Reference({
    Key key,
    @required this.nameComplete,
    this.email,
    this.cellphone,
  }) : super(key: key);

  final String nameComplete;
  final String email;
  final String cellphone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.assignment_ind,
        color: kActionColor,
      ),
      title: Text(
        this.nameComplete,
        style: kTextStyleContent1,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          this.email != null ? Text(this.email) : null,
          this.cellphone != null
              ? Text(
                  this.cellphone,
                )
              : null,
        ],
      ),
      isThreeLine: true,
    );
  }
}
