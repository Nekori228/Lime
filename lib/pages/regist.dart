import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu.dart';

class RegistPage extends StatefulWidget {
  RegistPage({Key? key}) : super(key: key);

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  TextEditingController _textController = TextEditingController();

  bool _isObscured = true;

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
              // Image.asset('assets/icons/icon.jpg'),
              SvgPicture.asset('assets/icons/icon.svg'),
              Text(
                'Регистрация',
                style: GoogleFonts.roboto(
                    color: Color(0xFF0D2100),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Логин',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF476533),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F3E0),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFF9F3E0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFF476533)),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Почта',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF476533),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F3E0),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFF9F3E0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFF476533)),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Пароль',
                      style: GoogleFonts.roboto(
                          color: Color(0xFF476533),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                controller: _textController,
                obscureText: _isObscured,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F3E0),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFF9F3E0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(41),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFF0D2100),
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  // primary: Color(0xFF9DD153),
                ),
                child: SizedBox(
                  height: 55,
                  child: Center(
                    child: SizedBox(
                      child: Text(
                        'Зарегистрироваться',
                        style: GoogleFonts.roboto(
                          color: Color(0xFF0D2100),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
