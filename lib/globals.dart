import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

var selectedPage = 0;
var selectedPages = 0;
var selectedPageBottomBar = 0;
var selectedMenuItem = 0;

class Cart {
  final List<String> items;

  Cart({required this.items});

  void add(String item) {
    items.add(item);
  }
}