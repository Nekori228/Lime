import 'dart:convert';
var selectedPage = 0;
var selectedPages = 0;
var selectedPageBottomBar = 0;
var selectedMenuItem = 0;

final Cart cart = Cart(items: []);
final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'Item 6', 'Item 7'];

class Cart {
  final List<String> items;

  Cart({required this.items});

  void add(String item) {
    items.add(item);
  }
}

final List<Item> items2 = [
  Item(name: 'Блинчики с ягодами', description: 'Блинчики по-домашнему, с клубникой и черникой, политые сиропом.', photo: 'assets/photo/eat.png', price: 299),
  Item(name: 'Завтрак “Легкий”', description: 'Ржаной хлебушек, яйцо, сливочный сыр, помидоры, и листья базилика', photo: 'assets/photo/eat2.png', price: 299),
  Item(name: 'Салат “Утрений”', description: 'Оливки, помидоры, яйца, руккола', photo: 'assets/photo/eat3.png', price: 299),
  Item(name: 'Блинчики с клубникой', description: 'Блинчики с клубникой, мятой и вилкой', photo: 'assets/photo/eat4.png', price: 299),
  Item(name: 'Оладушки', description: 'Оладушки из деревеньского творога', photo: 'assets/photo/eat5.png', price: 299),
  Item(name: 'Манты', description: 'Грузинские манты с мясом барашка', photo: 'assets/photo/eat6.png', price: 299),
  Item(name: 'Завтрак “Обеденный”', description: 'Каша кинуа, жаренная курица', photo: 'assets/photo/eat7.png', price: 299),
];

class Item {
  String name;
  String description;
  String photo;
  double price;

  Item({required this.name, required this.description, required this.photo, required this.price});
}

class User {
  final String avatarUrl;
  final String name;
  final String email;

  User({
    required this.avatarUrl,
    required this.name,
    required this.email,
  });
}