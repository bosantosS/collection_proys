import 'package:collection_proys/src/ui/contants.dart';
import 'package:flutter/material.dart';

class ItemOrg extends StatelessWidget {
  const ItemOrg({
    Key key,
    @required this.asset,
    @required this.puesto,
    this.periodo,
    @required this.org, 
    this.isPrimary = true,
  }) : super(key: key);

  final String asset;
  final String puesto;
  final String periodo;
  final String org;
  final bool isPrimary;

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
              color: this.isPrimary
                ? kPrimaryColor.withOpacity(0.4)
                : kSecondaryColor.withOpacity(0.4),
              width: double.maxFinite,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                title: Text(
                  this.puesto,
                  style: this.isPrimary
                    ? kTextStyleSubtitle
                    : kTextStyleSubtitle1,
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.org,
                      textAlign: TextAlign.start,
                      style: this.isPrimary 
                        ? kTextStyleContent
                        : kTextStyleContent1,
                    ),
                    if (this.periodo != null)
                      Text(
                        this.periodo,
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
