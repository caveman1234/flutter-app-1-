import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constains/icons.dart';
class HomeTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "个人所得税",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Icon(TaxIcons.scan,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(TaxIcons.message,color: Colors.white,)
                ),
              ],
            )
          ],
        ),
    );
  }
}
