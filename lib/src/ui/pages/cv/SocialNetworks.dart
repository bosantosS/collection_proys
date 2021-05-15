import 'package:collection_proys/src/ui/contants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.facebook,url: 'https://www.facebook.com/profile.php?id=100007119365920',),
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.linkedin,url: 'https://www.linkedin.com/in/bryan-santos-santistevan-515459120',),
          _Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.instagram,url: 'https://www.instagram.com/bryan97san/',),
          //_Link(isPrimary: isPrimary,iconData: FontAwesomeIcons.youtube,url: 'https://www.facebook.com/profile.php?id=100007119365920',),
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
    @required this.url,
  }) : super(key: key);

  final bool isPrimary;
  final IconData iconData;
  final String url;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        //headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
        _launchInBrowser(this.url);
      },
    );
  }
}

