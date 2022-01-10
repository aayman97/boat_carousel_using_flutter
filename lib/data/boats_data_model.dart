class BoatsDataModel {
  BoatsDataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.maker,
    required this.spec,
    required this.boats,
  });

  int id;
  String name;
  String description;
  String image;
  String maker;
  Spec spec;
  List<String> boats;
}

class Spec {
  Spec({
    required this.leng,
    required this.beam,
    required this.weight,
    required this.fuelCapacity,
  });

  String leng;
  String beam;
  String weight;
  String fuelCapacity;
}

final boat1 = BoatsDataModel(
  id: 0,
  name: "X24 Force",
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  image: "assets/images/boat1.png",
  maker: "Minecraft",
  spec: Spec(
    leng: "24'2''",
    beam: '102"',
    weight: "2432Kg",
    fuelCapacity: "322L",
  ),
  boats: [
    "assets/boats/bote1.jpg",
    "assets/boats/bote2.jpg",
    "assets/boats/bote3.jpg",
    "assets/boats/bote4.jpg"
  ],
);
final boat2 = BoatsDataModel(
  id: 0,
  name: "X22 Fun",
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  image: "assets/images/boat2.png",
  maker: "MineCraft",
  spec: Spec(
    leng: "24'2''",
    beam: '102"',
    weight: "2432Kg",
    fuelCapacity: "322L",
  ),
  boats: [
    "assets/boats/bote1.jpg",
    "assets/boats/bote2.jpg",
    "assets/boats/bote3.jpg",
    "assets/boats/bote4.jpg"
  ],
);
final boat3 = BoatsDataModel(
  id: 0,
  name: "XRP Fun",
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  image: "assets/images/boat3.png",
  maker: "LoveCraft",
  spec: Spec(
    leng: "24'2''",
    beam: '102"',
    weight: "2432Kg",
    fuelCapacity: "322L",
  ),
  boats: [
    "assets/boats/bote1.jpg",
    "assets/boats/bote2.jpg",
    "assets/boats/bote3.jpg",
    "assets/boats/bote4.jpg"
  ],
);
final boat4 = BoatsDataModel(
  id: 0,
  name: "XML Extra",
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  image: "assets/images/boat4.png",
  maker: "ExtraCraft",
  spec: Spec(
    leng: "24'2''",
    beam: '102"',
    weight: "2432Kg",
    fuelCapacity: "322L",
  ),
  boats: [
    "assets/boats/bote1.jpg",
    "assets/boats/bote2.jpg",
    "assets/boats/bote3.jpg",
    "assets/boats/bote4.jpg"
  ],
);
final boat5 = BoatsDataModel(
  id: 0,
  name: "DOP Full",
  description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  image: "assets/images/boat5.png",
  maker: "MakerBot",
  spec: Spec(
    leng: "24'2''",
    beam: '102"',
    weight: "2432Kg",
    fuelCapacity: "322L",
  ),
  boats: [
    "assets/boats/bote1.jpg",
    "assets/boats/bote2.jpg",
    "assets/boats/bote3.jpg",
    "assets/boats/bote4.jpg"
  ],
);


final boats = [boat1, boat3, boat2, boat4, boat5];