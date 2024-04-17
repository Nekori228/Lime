import 'dart:convert';
var selectedPage = 0;
var selectedPages = 0;
var selectedPageBottomBar = 0;
var selectedMenuItem = 0;

final Cart cart = Cart(items: []);
final List<String> items = ['Item 1', 'Item 2'];

class Cart {
  final List<String> items;

  Cart({required this.items});

  void add(String item) {
    items.add(item);
  }
}

final List<Item> items2 = [
  Item(name: 'Блинчики с ягодами', description: 'Горячие сытные блинчики по-домашнему, с клубникой и черникой, политые сиропом.', photo: 'assets/photo/eat.png'),
  Item(name: 'Завтрак “Легкий”', description: 'Ржаной хлебушек, яйцо, сливочный сыр, помидоры, и листья базилика', photo: 'assets/photo/eat2.png'),
];

class Item {
  String name;
  String description;
  String photo;

  Item({required this.name, required this.description, required this.photo});
}