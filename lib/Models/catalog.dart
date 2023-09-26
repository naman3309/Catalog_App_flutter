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
}

class Catalog {
  static final items = [
    Items(
        id: 1,
        name: "Iphone 15 ",
        desc: "Apple Iphone 15th generation",
        color: "Titanium",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
        price: 999),
    Items(
        id: 2,
        name: "Iphone 15 Plus",
        desc: "Apple Iphone 15th generation plus",
        color: "Titanium",
        image:
            "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
        price: 1199),
    Items(
        id: 3,
        name: "Iphone 15 Pro",
        desc: "Apple Iphone 15th generation Pro",
        color: "Titanium",
        image:
            "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
        price: 1399),
    Items(
        id: 4,
        name: "Iphone 15 Pro Max",
        desc: "Apple Iphone 15th generation Pro Max",
        color: "Titanium",
        image:
            "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
        price: 1999)
  ];
}
