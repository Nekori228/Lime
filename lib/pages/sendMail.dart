import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lime/pages/shop.dart';

import '../globals.dart';

class SendMail extends StatelessWidget {
  const SendMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBE2C7),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => CartPage(cart: cart,),
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Center(
            child: Text(
              'Спасибо за сделанный заказ, \n менеджер свяжеться с вами',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5C913B),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
