import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/icon.svg'),
              Text(
                'Вход',
                style: TextStyle(
                    color: Color(0xFF0D2100),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Логин',
                    style: TextStyle(
                        color: Color(0xFF476533),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Пароль',
                    style: TextStyle(
                        color: Color(0xFF476533),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  primary: Color(0xFF9DD153),
                ),
                child: SizedBox(
                  height: 60,
                  child: Center(
                    child: SizedBox(
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          color: Color(0xFF0D2100),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
