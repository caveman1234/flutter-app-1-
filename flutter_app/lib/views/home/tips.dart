import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeTips extends StatefulWidget{
  @override
  _HomeTips createState() => _HomeTips();
}
class _HomeTips extends State<HomeTips>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        
      ),
      height: 30,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("专项附加扣除政策继续享受“七提醒”",style: TextStyle(fontSize: 13,color: Colors.yellow[800]),),
            Text("点击查看",style: TextStyle(color: Colors.blue[600],fontSize: 13),)
          ],
        ),
      ),
    );
  }
}