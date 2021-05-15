import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/SocialNetworks.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PresonalInformation extends StatelessWidget {
  PresonalInformation({
    Key key,
    this.width,
    this.height,
    this.isPrimary = true,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isPrimary;
  Future<void> _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _mailTo() async {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'bryan97santos@gmail.com',
        queryParameters: {'subject': 'Oferta de Empleo'});
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: this.isPrimary ? kPrimaryColor : kSecondaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Santos S. Bryan O.',
              overflow: TextOverflow.ellipsis,
              style: this.isPrimary ? kTextStyleTitle : kTextStyleTitle1,
            ),
            DividerSection(width: width, height: height),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: this.isPrimary ? kActionColor : kCancelColor,
                backgroundImage: AssetImage('assets/img/perfil.jpeg'),
                minRadius: this.height * 0.08,
                maxRadius: this.height * 0.16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Estudiante de 23 años con experiencia dando clases, soporte técnico y desarrollo de aplicaciones multiplataforma. Busco aportar al crecimiento de la empresa con los conocimientos que he adquirido y aprender nuevas habilidades para crecer como profesional.',
                softWrap: true,
                textAlign: TextAlign.justify,
                //overflow: TextOverflow.ellipsis,
                //maxLines: 2,
                style: this.isPrimary ? kTextStyleContent : kTextStyleContent1,
              ),
            ),
            DividerSection(width: width, height: height),
            ItemList(
              iconData: FontAwesomeIcons.mapMarkedAlt,
              title: 'Ecuador - Guayaquil',
              description: ['Guasmo Sur Union de Bananeros'],
              qualification: null,
            ),
            ItemList(
              iconData: FontAwesomeIcons.mailBulk,
              title: 'bryan97santos@gmail.com',
              qualification: null,
              onPressed: () {
                _launched = _mailTo();
              },
            ),
            ItemList(
              iconData: FontAwesomeIcons.mobileAlt,
              title: '+593 989884022',
              qualification: null,
              onPressed: () {
                _launched = _makePhoneCall('tel:+593989884022');
              },
            ),
            DividerSection(width: width, height: height),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SocialNetworks(isPrimary: isPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
