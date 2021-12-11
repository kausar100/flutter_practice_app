import 'package:flutter/material.dart';
import 'package:flutter_practice/core/store.dart';
import 'package:flutter_practice/pages/cart_page.dart';
import 'package:flutter_practice/pages/homepage.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/MyRoute.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
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
      initialRoute: MyRoute.loginPage,
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homePage: (context) => HomePage(),
        MyRoute.loginPage: (context) => LoginPage(),
        MyRoute.cartPage: (context) => CartPage(),
      },
    );
  }
}
