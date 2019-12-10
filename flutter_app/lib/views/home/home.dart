import 'package:flutter/cupertino.dart';
import '../../constains/icons.dart';
import 'title.dart';
import 'banner.dart';
import 'footer.dart';
import 'tips.dart';
class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
}
class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      HomeTitle(),
      HomeBanner(),
      HomeTips(),
      HomeFooter()
    ],);
  }
}