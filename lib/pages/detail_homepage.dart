import 'package:flutter/material.dart';
import 'package:flutter_practice/models/catalog.dart';
import 'package:flutter_practice/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailHomePage extends StatelessWidget {
  final Item catalog;

  const DetailHomePage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl2.red500.make(),
            AddToCart(catalog: catalog).wh(70, 35),
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.description.text.xl.make(),
                    5.heightBox,
                    "Affordable Small Appliances products available at Catalog app. Let us help you buy your next small appliance product from Best Electronics in Bangladesh. Check our huge collection of Small Appliances of various global brands."
                        .text
                        .make()
                        .p8()
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
