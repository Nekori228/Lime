import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      appBar: AppBar(
        backgroundColor: Color(0xFFEBE2C7),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => MenuPage(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/photo/eatItemBig.png", width: 260, height: 260),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 360,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color(0xFFFFFBF0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Завтрак “Легкий”",
                          style: TextStyle(
                            color: Color(0xFF9DD153),
                            fontWeight: FontWeight.w800,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          height: 60,
                          child: Text(
                            "Ржаной хлебушек, яйцо,сливочный сыр, помидоры, и листья базилика",
                            style: TextStyle(
                              color: Color(0xFF476533).withOpacity(0.6),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    PopupMenuButton<int>(
                      icon: Icon(
                        Icons.info_outline,
                        size: 30,
                        color: Color(0xFF476533),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          enabled: false,
                          child: Text(
                            'Масса: 210г',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          enabled: false,
                          child: Text('Ккал: 200',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        PopupMenuItem(
                          value: 3,
                          enabled: false,
                          child: Text('Острота: 0',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                      ],
                      onSelected: (value) {
                        // Обработка выбора пользователя
                        print('User selected: $value');
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
