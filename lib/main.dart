import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to practice app',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
