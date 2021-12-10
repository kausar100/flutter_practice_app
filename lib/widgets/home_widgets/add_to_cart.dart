import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/models/cart.dart';
import 'package:flutter_practice/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  final _cart = CartModel();
  AddToCart({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {//not in cart
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;//added into cart
          _cart.add(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}