import 'dart:io';

import 'package:flutter/material.dart';
import 'test.dart';
import 'views/home/home.dart';
import 'views/personal/personal.dart';
import 'views/query/query.dart';
import 'constains/icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    func();
    return MaterialApp(
      title: '个人所得税',
      home: LoadingPage(),
      routes: {
        // "/":(BuildContext context) => LoadingPage(),
        "/home":(BuildContext context) => MyHomePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  int _currentIndex = 0;
  List<Widget> _views = [Home(),Query(),Personal()];
  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
     
      body: _views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(TaxIcons.home),title: Text("首页",style: TextStyle(fontSize: 14),)),
          BottomNavigationBarItem(icon: Icon(TaxIcons.query),title: Text("查询",style: TextStyle(fontSize: 14),)),
          BottomNavigationBarItem(icon: Icon(TaxIcons.personal),title: Text("个人中心",style: TextStyle(fontSize: 14),)),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        selectedFontSize: 12,
        onTap: _onItemTapped,
      ),
    );
  }  

}

class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    print(context);
    Future.delayed(Duration(seconds: 1),(){
      Navigator.of(context).pushReplacementNamed("/home");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/pre_login.png",
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}





