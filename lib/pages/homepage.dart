import 'package:flutter/material.dart';
import 'package:flutter_practice/models/catalog.dart';
import 'package:flutter_practice/widgets/drawer.dart';
import 'package:flutter_practice/widgets/items.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(10, (index) => CatalogModels.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Catalog App',
        ),
      ),
      body: ListView.builder(
        itemCount: dummyList.length, //CatalogModels.items.length,

        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index],); //(item: CatalogModels.items[index]);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
