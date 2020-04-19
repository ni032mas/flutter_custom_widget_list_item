import 'package:flutter/cupertino.dart';

import 'package:custom_widget/mentor.dart';
import 'package:flutter/material.dart';

class MentorListItem extends StatelessWidget {
  final Mentor mentor;
  MentorListItem(this.mentor);

  @override
  Widget build(BuildContext context) {
    final info = Container(
        margin: EdgeInsets.only(left: 72, right: 24),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 5, offset: Offset(0, 10))
          ],
        ),
        child: Container(
          margin: EdgeInsets.only(top: 16, left: 72),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                mentor.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(mentor.company,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    mentor.location,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Container(
                    width: 24,
                  ),
                  Icon(
                    Icons.language,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    mentor.language,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ));

    final photo = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(width: 3, color: Colors.white),
          image: DecorationImage(
              image: AssetImage(mentor.assetPath), fit: BoxFit.fill),
        ),
        height: 92,
        width: 92,
      ),
    );

    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 16, bottom: 8),
      child: Stack(children: <Widget>[info, photo],),
    );
  }
}
