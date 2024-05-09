import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final String image;
  int rating;

  Product(this.name, this.description, this.image, this.rating);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['name'], // 'name' : 'Iphone 14 Pro',
      json['description'], // 'description' : 'best phone in the world',
      json['image'], // 'image' : 'assets/images/iphone.png'
      json['rating'], // 'rating' : 0
    );
  }

  void updateRating(int newRating) {
    rating = newRating;

    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product(
      'sousou no Frieren',
      "Synopsis During their decade-long quest to defeat the Demon King, the members of the hero's party—Himmel himself, the priest Heiter, the dwarf warrior Eisen, and the elven mage Frieren—forge bonds through adventures and battles, creating unforgettable precious memories for most of them.",
      'assets/images/snf.jpg',
      0,
    ));

    items.add(Product(
      'Fullmetal Alchemist Brotherhood',
      "When two brothers fail to resurrect their dead mother, resulting in the youngest losing his body and the oldest an arm and leg, they end up joining the military in hopes of finding the Philosopher's Stone, which could return their lost bodies.",
      'assets/images/fmb.jpg',
      0,
    ));

    items.add(Product(
      'Stein; Gate',
      "After discovering time travel, a university student and his colleagues must use their knowledge of it to stop an evil organization and their diabolical plans. Okabe Rintarou, a university student who refers to himself as Crazy Mad Scientist Hououin Kyouma and his lab's members work on a microwave device that can transfer messages to the past",
      'assets/images/sg.jpg',
      0,
    ));

    items.add(Product(
      'Gintama',
      "In the early 17th century, Japan adopted strict isolation policies and severed almost all ties with foreign countries. In 1853, the US fleet commanded by Admiral Perry forced the doors open, leading to a modernization of the nation's sociopolitical systems and the eventual fall of the Shogunate. The samurai regime ended its life with the imperial restoration in 1868. That's what history tells, but in Gintama, that's not what happens. Instead of the US fleet, the country is stormed by spaceships coming from four corners of the universe and soon we see it occupied by extraterrestrials. The Shogunate has become a puppet of alien occupation armies. All samurais have been disarmed and reduced to temp workers with no skills who just try to make ends meet. Gintama is a story of a handyman named Gintoki, a samurai with no respect for rules set by the invaders, who's ready to take any job to survive. He and his gang, however, are also among the very few who have not forgotten the morale of a swordsman. Wherever they go, all they do is to create troubles. Troubles that they of course try to solve, but in reality..",
      'assets/images/gin.jpg',
      0,
    ));

    items.add(Product(
      'Hunter X Hunter(2011)',
      "Ambitious participants who challenge the notorious exam carry their own reason. What drives 12-year-old Gon Freecss is finding Ging, his father and a Hunter himself. Believing that he will meet his father by becoming a Hunter, Gon takes the first step to walk the same path.",
      'assets/images/hxh2011.jpg',
      0,
    ));

    return items;
  }
}
