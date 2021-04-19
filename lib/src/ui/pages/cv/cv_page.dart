import 'package:collection_proys/src/ui/contants.dart';
import 'package:flutter/material.dart';

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, constraints) {
          if (constraints.maxWidth < 600) {
            return PageView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                _PresonalInformation(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
                _WorkExperience(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
                _Education(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
                _Skills(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    color: kPrimaryColor,
                    child: _PresonalInformation(
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
                    child: _WorkExperience(
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
                    child: _Education(
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
                    child: _Skills(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class _Skills extends StatelessWidget {
  const _Skills({
    Key key, this.width, this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: kSecondaryColor,
      child: Column(
        children: [
          Text(
            'Habilidades',
            style: kTextStyleTitle1,
          ),
          _DividerSection(width: this.width, height: this.height),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                dense: true,
                horizontalTitleGap: 2.0,isThreeLine: true,
                title: Text(
                  'Flutter',
                  style: kTextStyleContent,
                ),
                subtitle: Text('Para Android, iOS y web.'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2.0,isThreeLine: true,
                title: Text(
                  'Ionic',
                  style: kTextStyleContent,
                ),
                subtitle: Text('Para Android, iOS y web.'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2.0,isThreeLine: true,
                title: Text(
                  'Vuejs',
                  style: kTextStyleContent,
                ),
                subtitle: Text('Para web.'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2.0,isThreeLine: true,
                title: Text(
                  'Google Cloud Platform',
                  style: kTextStyleContent,
                ),
                subtitle: Text('Firebase, Maps y ML kit.'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2.0,isThreeLine: false,
                title: Text(
                  'Amazon Web Services',
                  style: kTextStyleContent,
                ),
                //subtitle: Text('Firebase, Maps y ML kit.'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                    
                    Icon(
                      Icons.star_border,
                      color: kCancelColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Education extends StatelessWidget {
  const _Education({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: kPrimaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Educacion',
              style: kTextStyleTitle,
            ),
            _DividerSection(width: this.width, height: this.height),
            ListView(
              shrinkWrap: true,
              children: [
                _JobDescription(
                  asset: 'assets/logo/ESPOL.png',
                  puesto: 'Ing. en Ciencias Computacionales',
                  org: 'ESPOL',
                  periodo: 'Actualmente',
                ),
                _JobDescription(
                  asset: 'assets/logo/AIIP.png',
                  puesto: 'Bach. Tecnico en Aplicaciones Informaticas',
                  org: 'U. E. Ati II Pillahuaso',
                  periodo: '2016',
                ),
              ],
            ),
            Text(
              'Cursos',
              style: kTextStyleTitle,
            ),
            _DividerSection(width: this.width, height: this.height),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.car_rental,
                    color: kCancelColor,
                  ),
                  title: Text(
                    'Licencia de manejo, tipo B',
                    style: kTextStyleContent,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.menu_book,
                    color: kCancelColor,
                  ),
                  title: Text(
                    'Microsoft Office 365',
                    style: kTextStyleContent,
                  ),
                ),
              ],
            ),
            Text(
              'Idiomas',
              style: kTextStyleTitle,
            ),
            _DividerSection(width: this.width, height: this.height),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'Español',
                    style: kTextStyleContent,
                  ),
                  //subtitle: Text('Intermedio, B1'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Ingles',
                    style: kTextStyleContent,
                  ),
                  subtitle: Text('Intermedio, B1'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star_border,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.star_border,
                        color: kCancelColor,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkExperience extends StatelessWidget {
  const _WorkExperience({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: kSecondaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Experiencia Laboral',
              overflow: TextOverflow.ellipsis,
              style: kTextStyleTitle1,
            ),
            _DividerSection(
              width: this.width,
              height: this.height,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                _JobDescription(
                  asset: 'assets/logo/FIEC.png',
                  puesto: 'Ayudante de Docencia',
                  periodo: 'May,2020 - Feb,2021',
                  org: 'ESPOL - FIEC',
                ),
                _JobDescription(
                  asset: 'assets/logo/UEPIB.png',
                  puesto: 'Ayudante de docencia y Soporte Tecnico',
                  periodo: 'Oct,2020 - Mar,2021',
                  org: 'U. E. P. Instituto Britanico',
                ),
                _JobDescription(
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
            _DividerSection(
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

class _JobDescription extends StatelessWidget {
  const _JobDescription({
    Key key,
    @required this.asset,
    @required this.puesto,
    this.periodo,
    @required this.org,
  }) : super(key: key);

  final String asset;
  final String puesto;
  final String periodo;
  final String org;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55.0),
            child: Container(
              padding: const EdgeInsets.only(left: 50.0),
              color: kPrimaryColor.withOpacity(0.4),
              width: double.maxFinite,
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              // Text(
              //   this.puesto,
              //   style: kTextStyleSubtitle1,
              // ),
              // Text(
              //   this.org,
              //   style: kTextStyleContent1,
              // ),
              // if (this.periodo != null)
              //   Text(
              //     this.periodo,
              //     style: kTextStyleContent1,
              //   ),

              //   ],
              // ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                title: Text(
                  this.puesto,
                  style: kTextStyleSubtitle1,
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.org,
                      textAlign: TextAlign.start,
                      style: kTextStyleContent1,
                    ),
                    if (this.periodo != null)
                      Text(
                        this.periodo,
                        // style: kTextStyleContent1,
                      ),
                  ],
                ),
              ),
            ),
          ),
          ClipOval(
              child: Image.asset(
            this.asset,
            width: 100,
            alignment: Alignment.centerLeft,
          )),
        ],
      ),
    );
  }
}

class _PresonalInformation extends StatelessWidget {
  const _PresonalInformation({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Santos S. Bryan O.',
            overflow: TextOverflow.ellipsis,
            style: kTextStyleTitle,
          ),
          _DividerSection(width: width, height: height),
          // Container(
          //   width: this.width - 16.0,
          //   height: (this.height * 0.02),
          //   color: kCancelColor,
          // ),
          CircleAvatar(
            backgroundColor: kCancelColor,
            backgroundImage: AssetImage('assets/img/eevee.png'),
            minRadius: this.height * 0.08,
            maxRadius: this.height * 0.16,
          ),
          _DividerSection(width: width, height: height),
          // Container(
          //   width: this.width - 16.0,
          //   height: (this.height * 0.02),
          //   color: kCancelColor,
          // ),
          Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.location_on_rounded,
                  color: kCancelColor,
                ),
                title: Text(
                  'Ecuador-Guayaquil',
                  style: kTextStyleContent,
                ),
                subtitle: Text(
                  "Guasmo Sur Union de Bananeros",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.mail,
                  color: kCancelColor,
                ),
                title: Text(
                  'bryan97santos@gmail.com',
                  style: kTextStyleContent,
                ),
                //subtitle: Text("Guasmo Sur Union de Bananeros",),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone_android,
                  color: kCancelColor,
                ),
                title: Text(
                  '+593 989884022',
                  style: kTextStyleContent,
                ),
                //subtitle: Text("Guasmo Sur Union de Bananeros",),
              ),
            ],
          ),
          _DividerSection(width: width, height: height),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ''' Adasdsadsad ad asd asd sad a sd sa d as das d asd a sd as d as d as d as d as d as d as da sd as d as d as d asdasdasd.
              ''',
              //overflow: TextOverflow.ellipsis,
              //maxLines: 2,
              style: kTextStyleContent,
            ),
          ),
        ],
      ),
    );
  }
}

class _DividerSection extends StatelessWidget {
  const _DividerSection({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width - 16.0,
      height: (this.height * 0.01),
      color: kCancelColor.withOpacity(0.4),
    );
  }
}
