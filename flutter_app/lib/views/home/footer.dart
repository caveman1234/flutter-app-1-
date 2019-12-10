import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeFooter extends StatefulWidget{
  @override
  _HomeFooter createState() => _HomeFooter();
}
class _HomeFooter extends State<HomeFooter>{
  List _arr = [
    {"title":"2020年度继续享受专项附加扣除","subtitle":"将2019年度已填报的扣除信息在2020年度继续填报","src":"ass"},
    {"title":"申报专项附加扣除","subtitle":"您可选择扣除年度之后，新增专项附加扣除的填报：子女教育、继续教育、大病医疗、住房贷款利息、住房租金、赡养老人","src":"ass"},
  ];
  
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = _arr.map((item) {
      return Container(
        // decoration: BoxDecoration(
        //   boxShadow: [
        //     BoxShadow(color: Colors.green,offset: Offset(3,3),spreadRadius: 5.0,)
        //   ]
        // ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(item["title"]),
              subtitle: Text(item["subtitle"]),
              trailing: Image.asset("assets/images/logo.png"),
            ),
            Divider(height: 20,)
          ],
        ),
      );
    }).toList();
    return Container(
      child: Column(
        children: widgets,
      )
    );
  }
}