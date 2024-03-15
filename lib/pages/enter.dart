import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lime/pages/regist.dart';

import 'menu.dart';

class EnterPage extends StatefulWidget {
  EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;
  bool _isButtonEnabled = false;
  bool _buttonPressed = false; // Флаг для отслеживания нажатия на кнопку


  void _checkInput() {
    setState(() {
      if (_emailController.text == 'clikov_ed@mail.ru' &&
          _passwordController.text == '1234567') {
        _isButtonEnabled = true;
      } else {
        _isButtonEnabled = false;
      }
    });
  }

  // Future<void> _signInWithEmailAndPassword() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     );
  //     // Перенаправьте пользователя на другую страницу после успешного входа
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => MenuPage()),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                'Вход',
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
                // controller: _emailController,
                onChanged: (_) => _checkInput(),
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
              // TextField(
              //   controller: _emailController,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: Color(0xFFF9F3E0),
              //     hintText: 'Введите текст',
              //     hintStyle: TextStyle(color: Color(0xFFF9F3E0)),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.green.withOpacity(0),
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.green.withOpacity(0),
              //       ),
              //     ),
              //   ),
              //   style: TextStyle(color: Color(0xFF476533)),
              // ),
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
                // controller: _passwordController,
                onChanged: (_) => _checkInput(),
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
              // TextField(
              //   controller: _passwordController,
              //   obscureText: _isObscured,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: Color(0xFFF9F3E0),
              //     hintText: 'Введите текст',
              //     hintStyle: TextStyle(color: Color(0xFFF9F3E0)),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.green.withOpacity(0),
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(41),
              //       ),
              //       borderSide: BorderSide(
              //         color: Colors.green.withOpacity(0),
              //       ),
              //     ),
              //     suffixIcon: IconButton(
              //       icon: Icon(
              //         _isObscured ? Icons.visibility : Icons.visibility_off,
              //         color: Color(0xFF0D2100),
              //       ),
              //       onPressed: () {
              //         setState(() {
              //           _isObscured = !_isObscured;
              //         });
              //       },
              //     ),
              //   ),
              // ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // setState(() {
                  //   _buttonPressed = true; // Устанавливаем флаг нажатия на кнопку
                  //   if (_isButtonEnabled) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => MenuPage()),
                  //     );
                  //   }
                  // });

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  // primary: _isButtonEnabled ? Color(0xFF9DD153) : Colors.grey,
                ),
                child: SizedBox(
                  height: 55,
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
              ),
              // ElevatedButton(
              //   onPressed: _isButtonEnabled
              //       ? () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => MenuPage()),
              //           );
              //         }
              //       : null,
              //   style: ElevatedButton.styleFrom(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(40),
              //     ),
              //     elevation: 5, // Добавляем эффект нажатия
              //     backgroundColor: _isButtonEnabled ? Color(0xFF9DD153) : Colors.grey,
              //   ),
              //
              //   child: SizedBox(
              //     height: 55,
              //     child: Center(
              //       child: SizedBox(
              //         child: Text(
              //           'Войти',
              //           style: TextStyle(
              //             color: Color(0xFF0D2100),
              //             fontSize: 26,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // ElevatedButton(
              //   // onPressed: _signInWithEmailAndPassword,
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => MenuPage()),
              //     );
              //   },
              //   style: ElevatedButton.styleFrom(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(40),
              //     ),
              //     // primary: Color(0xFF9DD153),
              //   ),
              //   child: SizedBox(
              //     height: 55,
              //     child: Center(
              //       child: SizedBox(
              //         child: Text(
              //           'Войти',
              //           style: GoogleFonts.roboto(
              //             color: Color(0xFF0D2100),
              //             fontSize: 26,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyOrangeText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrangeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'Нет учётной записи?',
            style: TextStyle(color: Color(0xFFD6A875), fontSize: 14),
          ),
          TextSpan(
            text: ' Зарегистироваться',
            style: TextStyle(
                color: Color(0xFFD6A875),
                decoration: TextDecoration.underline,
                fontSize: 14),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistPage()),
                );
              },
          ),
        ],
      ),
    );
  }
}
