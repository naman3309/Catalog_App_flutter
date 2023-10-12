class Items {
  num id;
  String name;
  String desc;
  String color;
  String image;
  num price;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.image,
      required this.price});

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      color: map["color"],
      image: map["image"],
      price: map["price"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "color": color,
        "image": image,
        "price": price,
      };
}

class Catalog {
  static List<Items> items = [];
  static Items getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  static Items getByPos(int pos) => items[pos];
}
