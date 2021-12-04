import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice App'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            color: Colors.red,
            width: 20,
            height: 20,
          ),
          Container(
            color: Colors.blue,
            width: 30,
            height: 30,
          ),
          Container(
            color: Colors.green,
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
