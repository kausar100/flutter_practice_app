import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/detail_homepage.dart';
import 'package:flutter_practice/pages/homepage.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/MyRoute.dart';
import 'package:flutter_practice/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.homePage,
      routes: {
        MyRoute.homePage: (context) => HomePage(),
        MyRoute.loginPage: (context) => LoginPage(),
      },
    );
  }
}
