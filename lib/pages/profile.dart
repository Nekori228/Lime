import 'package:flutter/material.dart';

import 'menyEnter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [Text("dsd")],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
