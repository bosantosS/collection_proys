import 'package:collection_proys/src/ui/contants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({
    Key key,
    @required this.isPrimary,
  }) : super(key: key);

  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.facebook,),
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.linkedin,),
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.instagram,),
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.youtube,),
        ],
      ),
    );
  }
}

class _Link extends StatelessWidget {
  const _Link({
    Key key,
    @required this.isPrimary, 
    this.iconData,
  }) : super(key: key);

  final bool isPrimary;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 48.0,
      icon: FaIcon(
        this.iconData,
        color: this.isPrimary ? kActionColor : kCancelColor,
      ),
      onPressed: () {
        print(this.iconData.toString());
      },
    );
  }
}

