import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/SocialNetworks.dart';
import 'package:flutter/material.dart';

class PresonalInformation extends StatelessWidget {
  const PresonalInformation({
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
              'Santos S. Bryan O.',
              overflow: TextOverflow.ellipsis,
              style: this.isPrimary
                ? kTextStyleTitle
                : kTextStyleTitle1,
            ),
            DividerSection(
              width: width, 
              height: height
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: this.isPrimary 
                  ? kActionColor
                  : kCancelColor,
                backgroundImage: AssetImage('assets/img/eevee.png'),
                minRadius: this.height * 0.08,
                maxRadius: this.height * 0.16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ''' Adasdsadsad ad asd asd sad a sd sa d as das d asd a sd as d as d as d as d as d as d as da sd as d as d as d asdasdasd.
                ''',
                softWrap: true,
                textAlign: TextAlign.justify,
                //overflow: TextOverflow.ellipsis,
                //maxLines: 2,
                style: this.isPrimary
                ? kTextStyleContent
                : kTextStyleContent1,
              ),
            ),
            DividerSection(width: width, height: height),
            ItemList(
              iconData: Icons.location_on_rounded,
              title: 'Ecuador - Guayaquil',
              description: ['Guasmo Sur Union de Bananeros'], 
              qualification: null,
            ),
            ItemList(
              iconData: Icons.mail,
              title: 'bryan97santos@gmail.com',
              qualification: null,
            ),
            ItemList(
              iconData: Icons.phone_android,
              title: '+593 989884022',
              qualification: null,
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



