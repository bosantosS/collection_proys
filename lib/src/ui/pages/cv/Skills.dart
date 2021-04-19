import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
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
      child: Column(
        children: [
          Text(
            'Habilidades',
            style: this.isPrimary
              ? kTextStyleTitle 
              : kTextStyleTitle1,
          ),
          DividerSection(
            width: this.width, 
            height: this.height
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ItemList(
                title: 'Flutter',
                description: 'Para Android, iOS y web.',
                qualification: 4.5,
              ),
              ItemList(
                title: 'Ionic',
                description: 'Para Android, iOS y web.',
                qualification: 3.5,
              ),
              ItemList(
                title: 'Vuejs', 
                description: 'Para web.',
                qualification: 3.5,
              ),
              ItemList(
                title: 'Google Cloud Platform', 
                description: 'Firebase, Maps y ML kit.',
                qualification: 3.5,
              ),
              ItemList(
                title: 'Amazon Web Services', 
                description: 'Almacenamiento en Buckets.',
                qualification: 2.5,
              ),
              ItemList(
                title: 'Python', 
                description: 'Para scrapping, backend y GUI.',
                qualification: 4.0,
              ),
              ItemList(
                title: 'Java', 
                description: 'Para backend y GUI.',
                qualification: 3.0,
              ),
              ItemList(
                title: 'PHP', 
                description: 'Para backend.',
                qualification: 3.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

