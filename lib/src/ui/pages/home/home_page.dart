import 'package:collection_proys/src/ui/pages/Layout_init.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class _Project {
  final String description;
  final String imgPath;

  _Project(this.description, this.imgPath);  
}


class HomePage extends StatelessWidget {

  final List<_Project> projects = [
    _Project(
      'dadsadasdsadad ada sd as d sad as d as d asdas d asd sa d asd\n as d as d as d as d as da sas dasd a sd as d sa d as d \nas d as d sad as asdasd.', 
      'assets/svgs/project_01.svg'),
    _Project(
      'dadsadasdsadad ada sd as d sad as d as d asdas d asd sa d asd as d as d as d as d as da sas dasd a sd as d sa d as d as d as d sad as asdasd.', 
      'assets/svgs/project_02.svg'),
    _Project(
      'dadsadasdsadad ada sd as d sad as d as d asdas d asd sa d asd as d as d as d as d as da sas dasd a sd as d sa d as d as d as d sad as asdasd.', 
      'assets/svgs/project_03.svg'),
    _Project(
      'dadsadasdsadad ada sd as d sad as d as d asdas d asd sa d asd as d as d as d as d as da sas dasd a sd as d sa d as d as d as d sad as asdasd.', 
      'assets/svgs/project_04.svg'),
    _Project(
      'dadsadasdsadad ada sd as d sad as d as d asdas d asd sa d asd as d as d as d as d as da sas dasd a sd as d sa d as d as d as d sad as asdasd.', 
      'assets/svgs/project_05.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutInit(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          //shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: this.projects.length,
          itemBuilder: (BuildContext context,int indx){
            return LayoutBuilder(
              builder: (BuildContext context,constraints){
                if(constraints.maxWidth >= 600){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: constraints.maxWidth,
                      //height: constraints.maxHeight * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          indx % 2 == 0 
                          ? Flexible(
                        flex: 1,
                        child: kIsWeb 
                          ? SvgPicture.network('/${this.projects[indx].imgPath}')
                          : SvgPicture.asset(this.projects[indx].imgPath))
                        : Container(height:0,width: 0,),
                        //SizedBox(height: constraints.maxHeight * 0.08,),
                        Flexible(
                        flex: 1,
                        child: Text(
                          this.projects[indx].description,
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),)),
                        indx % 2 != 0 
                          ? Flexible(
                        flex: 1,
                        child: kIsWeb 
                          ? SvgPicture.network('/${this.projects[indx].imgPath}')
                          : SvgPicture.asset(this.projects[indx].imgPath))
                        : Container(height:0,width: 0,),
                        SizedBox(height: constraints.maxWidth * 0.08)
                        ],
                      ),
                    ),
                  );
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        this.projects[indx].description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kIsWeb 
                          ? SvgPicture.network('/${this.projects[indx].imgPath}')
                          : SvgPicture.asset(this.projects[indx].imgPath),
                    ],
                  ),
                );

              }
            );
          }
        ),
      ),
    );
  }
}