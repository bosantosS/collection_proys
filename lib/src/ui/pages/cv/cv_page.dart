import 'package:collection_proys/src/ui/contants.dart';
import 'package:collection_proys/src/ui/pages/cv/DividerSection.dart';
import 'package:collection_proys/src/ui/pages/cv/Education.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemList.dart';
import 'package:collection_proys/src/ui/pages/cv/ItemOrg.dart';
import 'package:collection_proys/src/ui/pages/cv/PersonalInformation.dart';
import 'package:collection_proys/src/ui/pages/cv/Skills.dart';
import 'package:collection_proys/src/ui/pages/cv/WorkExperience.dart';
import 'package:flutter/material.dart';

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildPhoneLayout(constraints);
          } else if (constraints.maxWidth > 600 &&
              constraints.maxWidth < 1000) {
            return _buildLayoutTablet(constraints);
          } else {
            return _buildLayoutDesktop(constraints);
          }
        },
      ),
    );
  }


  PageView _buildPhoneLayout(BoxConstraints constraints) {
    return PageView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: [
        PresonalInformation(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        ),
        WorkExperience(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        ),
        Education(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        ),
        Skills(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        ),
      ],
    );
  }
}


  PageView _buildLayoutTablet(BoxConstraints constraints) {
    return PageView(

      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      children: [
        Row(
          children: [
            PresonalInformation(
              width: constraints.maxWidth / 2,
              height: constraints.maxHeight,
            ),
            WorkExperience(
              width: constraints.maxWidth / 2,
              height: constraints.maxHeight,
            ),
          ],
        ),
        Row(
          children: [
            Education(
              width: constraints.maxWidth / 2,
              height: constraints.maxHeight,
            ),
            Skills(
              width: constraints.maxWidth / 2,
              height: constraints.maxHeight,
            ),
          ],
        )
      ],
    );
  }

  Row _buildLayoutDesktop(BoxConstraints constraints) {
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(4.0),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: kPrimaryColor,
            child: PresonalInformation(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(4.0),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: kSecondaryColor,
            child: WorkExperience(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(4.0),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: kPrimaryColor,
            child: Education(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(4.0),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: kSecondaryColor,
            child: Skills(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
          ),
        ),
      ],
    );
  }