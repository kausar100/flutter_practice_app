import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice App'),
        centerTitle: true,
      ),
      body: Text('welcome to my new flutter application'),
      drawer: Drawer(),

    );
  }
}
