


import 'dart:io';

import 'package:flutter/cupertino.dart';




Future<String> testFuture(){
  return Future.delayed(Duration(seconds: 1),(){
    return Future.value("dfsdf");
  });
}




func() async{
  String a = await testFuture();
  print(a);
}