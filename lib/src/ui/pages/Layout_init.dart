import 'package:collection_proys/src/routes/routes.dart';
import 'package:flutter/material.dart';

class LayoutInit extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final Widget child;

  LayoutInit({Key key, @required this.child}) : super(key: key);

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: size.width < 600 ? AppBar() : null,
      drawer: _DrawerWithBackground(),
      body: LayoutBuilder(builder: (BuildContext context, constraints) {
        return Row(
          children: [
            constraints.maxWidth >= 600
                ? Flexible(
                    flex: 1,
                    child: Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      child: _MenuOptions(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                      ),
                    ))
                : Container(
                    width: constraints.minWidth,
                    height: constraints.minHeight,
                  ),
            Flexible(
                flex: 3,
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  //color: Colors.blueAccent,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      //focal: Alignment.centerRight,
                      center: Alignment.bottomRight,
                      tileMode: TileMode.mirror,
                      radius: constraints.maxHeight/constraints.maxWidth,
                      colors: [
                        Colors.blue,
                        Colors.blueAccent.withOpacity(0.70),
                      ]
                    ),
                  ),
                  child: this.child,
                ))
          ],
        );
      }),
      //floatingActionButton: FloatingActionButton(child:Icon(Icons.close),onPressed: (){Navigator.of(context).pop();},),
    );
  }
}

class _DrawerWithBackground extends StatelessWidget {
  const _DrawerWithBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return Drawer(
          // child: IconButton(
          //   icon: Icon(Icons.close),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          child: _MenuOptions(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
          ),
        );
      }
      return Container(
        width: constraints.minWidth,
        height: constraints.minHeight,
      );
    });
  }
}

class _MenuOptions extends StatelessWidget {
  const _MenuOptions({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: this.height, width: this.width, child: BackgroundFly()),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Container(
                ///color: Colors.white.withOpacity(0.64),
                width: this.width,
                //height: this.height * 0.16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex:1,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        foregroundImage: AssetImage('assets/img/eevee.png'),
                        maxRadius: this.height * 0.08,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(alignment: Alignment.center,fit: BoxFit.fill,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Santos S. Bryan O.',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Solo se que nada se.',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '+593987654321',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex:4,
              child: ListView.builder(
                //shrinkWrap: true,
                itemCount: routes.length,
                itemBuilder: (BuildContext context, int indx) {
                  return ListTile(
                    leading: Icon(
                      routes[indx].iconData,
                      color: Colors.white,
                    ),
                    title: Text(
                      routes[indx].title,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(routes[indx].route);
                    },
                  );
                },
              ),
            ),
            // SizedBox(
            //   height: 100.0,
            // ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'from',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/logo/BOSS.png',height:  this.height * 0.1,)
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BackgroundFly extends StatelessWidget {
  const BackgroundFly({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.pinkAccent.withOpacity(0.64),
                ]),
          ),
        ),
        Positioned(
          right: 24.0,
          top: -24.0,
          child: Cloud(
            size: 128.0,
            color: Colors.pinkAccent.withOpacity(0.9),
          ),
        ),
        Positioned(
          right: 32.0,
          height: 820,
          width: 2.0,
          child: Container(
            height: double.maxFinite,
            width: 2.0,
            color: Colors.white.withOpacity(0.32),
          ),
        ),
        Positioned(
          right: -8.0,
          top: 32.0,
          child: Cloud(
            size: 128.0,
            color: Colors.pinkAccent,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.airplanemode_on_sharp,
            size: 64.0,
            color: Colors.pinkAccent,
          ),
        ),
      ],
    );
  }
}

class Cloud extends StatelessWidget {
  const Cloud({
    Key key,
    this.size = 64.0,
    this.color = Colors.black,
  }) : super(key: key);

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateY(8)
        ..rotateY(2),
      alignment: FractionalOffset.center,
      child: Icon(
        Icons.cloud_outlined,
        size: this.size,
        color: this.color,
      ),
    );
  }
}
