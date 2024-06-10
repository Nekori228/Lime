import 'package:flutter/material.dart';
import 'package:lime/pages/enter.dart';

import 'globals.dart';

void main() {
  runApp(
    MaterialApp(
      home: EnterPage(),
    ),
  );
}

final user = User(
  avatarUrl: 'https://www.example.com/avatar.jpg',
  name: 'Иван Иванов',
  email: 'ivan.ivanov@example.com',
);

