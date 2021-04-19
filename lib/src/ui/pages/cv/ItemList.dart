import 'package:collection_proys/src/ui/contants.dart';

import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key, 
    @required this.title, 
    @required this.qualification, 
    this.description, 
    this.iconData, 
    this.isPrimary = true,

  }) : super(key: key);

  final IconData iconData;
  final String title;
  final String description;
  final double qualification;
  final bool isPrimary;

  Widget _buildStars(){

    List<Widget> stars = [];
    final rounded = this.qualification.round();

    for (var i = 1; i < 6; i++) {
      final modulo = this.qualification % i ;
      if (modulo < this.qualification) {
        stars.add(
          Icon(
            Icons.star,
            color: this.isPrimary
            ? kActionColor
            : kCancelColor,
            size: 24.0,
          ),
        );
        // print("${i} all star ${modulo}");
      } else if( i <= rounded){
        stars.add(
          Icon(
            Icons.star_half,
            color: this.isPrimary
            ? kActionColor
            : kCancelColor,
            size: 24.0,
          ),
        );
        // print("${i} half star ${modulo}");
      } else {
        stars.add(
          Icon(
            Icons.star_border,
            color: this.isPrimary
            ? kActionColor
            : kCancelColor,
            size: 24.0,
          ),
        );
        // print('${i} void star ${modulo}');
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: stars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      horizontalTitleGap: 2.0,
      //isThreeLine: true,
      leading: this.iconData != null
        ? Icon(this.iconData,color: this.isPrimary
          ? kActionColor
          : kCancelColor,)
        : null,
      title: Text(
        this.title,
        style: this.isPrimary 
          ? kTextStyleContent
          : kTextStyleContent1,
      ),
      subtitle: this.description != null 
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.description),
          ],
        ) 
        : null,
      trailing: this.qualification != null
        ? _buildStars()
        : null,
    );
  }
}