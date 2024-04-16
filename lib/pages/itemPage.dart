import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      appBar: AppBar(
        backgroundColor: Color(0xFFEBE2C7),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/photo/eat2.png", width: 260, height: 260),
            Center(
              child: Container(
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color(0xFFFFFBF0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Завтрак “Легкий”",
                      style: TextStyle(
                        color: Color(0xFF9DD153),
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      "Ржаной хлебушек, яйцо, сливочный сыр, помидоры, и листья базилика",
                      style: TextStyle(
                        color: Color(0xFF476533).withOpacity(0.6),
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
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
