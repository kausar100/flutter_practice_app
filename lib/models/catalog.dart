class Item {
  late final int id;
  late final String name;
  late final String description;
  late final num price;
  late final String color;
  late final String image;
  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModels {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iPhone 12th Generation",
        price: 999,
        color: "#33505a",
        image:"assets/iphone.png",)
  ];
}
