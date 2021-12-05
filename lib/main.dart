import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/homepage.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/MyRoute.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: MyRoute.loginPage,
    routes: {
      MyRoute.homePage: (context)=>HomePage(),
      MyRoute.loginPage: (context)=>LoginPage(),
    },
  ));
}
