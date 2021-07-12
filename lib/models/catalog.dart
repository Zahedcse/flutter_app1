class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 12",
        desc: "apple i phone",
        price: 120000,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=470&hei=556&fmt=png-alpha&.v=1604021661000")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
