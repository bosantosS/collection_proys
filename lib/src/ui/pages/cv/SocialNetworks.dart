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
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FaIcon(
          FontAwesomeIcons.facebook,
          size: 64.0,
          color: this.isPrimary ? kActionColor : kCancelColor,
        ),
        FaIcon(
          FontAwesomeIcons.twitter,
          size: 64.0,
          color: this.isPrimary ? kActionColor : kCancelColor,
        ),
        FaIcon(
          FontAwesomeIcons.instagram,
          size: 64.0,
          color: this.isPrimary ? kActionColor : kCancelColor,
        ),
        FaIcon(
          FontAwesomeIcons.youtube,
          size: 64.0,
          color: this.isPrimary ? kActionColor : kCancelColor,
        ),
      ],
    );
  }
}

