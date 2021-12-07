import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Catalog App',
        ),
      ),
      body: const Center(child: Text('Welcome to my new flutter application')),
      drawer: const MyDrawer(),
    );
  }
}
