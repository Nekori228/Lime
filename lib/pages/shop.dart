import 'package:flutter/material.dart';

import 'menyEnter.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text('sds'),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
