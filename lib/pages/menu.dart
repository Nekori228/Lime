import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String _selectedCity = 'Выберите город';

  Color button1Color = Color(0xFFF7F0DA);
  Color button2Color = Color(0xFFF7F0DA);
  Color buttonText1TextColor = Color(0xFF5C913B);
  Color buttonText2TextColor = Color(0xFF5C913B);
  Color buttonText3TextColor = Color(0xFF5C913B);
  Color buttonText4TextColor = Color(0xFF5C913B);

  bool isButton1Pressed = false;
  bool isButton2Pressed = false;
  bool isButton3Pressed = false;
  bool isButton4Pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          _showCityList(context);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '$_selectedCity',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF476533).withOpacity(0.8),
                              ),
                            ),
                            Transform.rotate(
                              angle: 280 * 3.14 / 187,
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Color(0xFF476533).withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE5D8AC),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFF7F0DA),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // SizedBox(
                                        //   width: 160,
                                        //   child: ElevatedButton(
                                        //     onPressed: () {
                                        //       setState(() {
                                        //         button1Color = Color(0xFFD6A875);
                                        //         button2Color = Color(0xFFF7F0DA);
                                        //
                                        //         isButton1Pressed =
                                        //             !isButton1Pressed;
                                        //       });
                                        //     },
                                        //     style: ButtonStyle(
                                        //       backgroundColor:
                                        //           MaterialStateProperty.all(
                                        //               button1Color),
                                        //       elevation:
                                        //           MaterialStateProperty.all(0.0),
                                        //     ),
                                        //     child: Text(
                                        //       'Доставка',
                                        //       style: GoogleFonts.roboto(
                                        //           color: button2Color ==
                                        //                   Color(0xFFF7F0DA)
                                        //               ? Color(0xFFF7F0DA)
                                        //               : Color(0xFF0D2100),
                                        //           fontSize: 18,
                                        //           fontWeight: FontWeight.bold),
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(width: 5),
                                        SizedBox(
                                          width: 160,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                button2Color = Color(0xFFD6A875);
                                                button1Color = Color(0xFFF7F0DA);

                                                isButton2Pressed =
                                                    !isButton2Pressed;
                                              });
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      button2Color),
                                              elevation:
                                                  MaterialStateProperty.all(0.0),
                                            ),
                                            child: Text(
                                              'В кафе',
                                              style: GoogleFonts.roboto(
                                                  color: button2Color ==
                                                          Color(0xFFD6A875)
                                                      ? Color(0xFFF7F0DA)
                                                      : Color(0xFF0D2100),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                height: 1.0,
                                color: Colors.white,
                                margin: EdgeInsets.symmetric(vertical: 10.0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/fork.png',
                                  color: Color(0xFF0D2100),
                                  width: 20,
                                  height: 20,
                                ),
                                Text(
                                  '2 - й микрорайон, 33',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF0D2100),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  'assets/icons/victor.png',
                                  color: Color(0xFF0D2100),
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 40.0,
                // Высота контейнера, можете настроить под свои требования
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton3Pressed = !isButton3Pressed;
                            isButton4Pressed = false;
                            buttonText1TextColor = isButton3Pressed
                                ? Color(0xFFF7F0DA)
                                : Color(0xFF5C913B);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton3Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton3Pressed
                                  ? Colors.transparent
                                  : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  41), // Установите радиус закругления
                            ),
                          ),
                        ),
                        child: Text(
                          'Завтраки',
                          style: GoogleFonts.roboto(
                              color: buttonText1TextColor, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton3Pressed = false;
                            isButton4Pressed = !isButton4Pressed;
                            buttonText2TextColor = isButton4Pressed
                                ? Color(0xFFF7F0DA)
                                : Color(0xFF5C913B);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton4Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton4Pressed
                                  ? Colors.transparent
                                  : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  41), // Установите радиус закругления
                            ),
                          ),
                        ),
                        child: Text(
                          'Закуски',
                          style: GoogleFonts.roboto(
                              color: buttonText2TextColor, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton3Pressed = false;
                            isButton4Pressed = !isButton4Pressed;
                            buttonText3TextColor = isButton4Pressed
                                ? Color(0xFFF7F0DA)
                                : Color(0xFF5C913B);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton4Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton4Pressed
                                  ? Colors.transparent
                                  : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  41), // Установите радиус закругления
                            ),
                          ),
                        ),
                        child: Text(
                          'Комбо',
                          style: GoogleFonts.roboto(
                              color: buttonText3TextColor, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton4Pressed = !isButton4Pressed;
                            buttonText4TextColor = isButton4Pressed
                                ? Color(0xFFF7F0DA)
                                : Color(0xFF5C913B);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton4Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton4Pressed
                                  ? Colors.transparent
                                  : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  41), // Установите радиус закругления
                            ),
                          ),
                        ),
                        child: Text(
                          'Комбо',
                          style: GoogleFonts.roboto(
                              color: buttonText4TextColor, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 340,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07),
                        width: MediaQuery.of(context).size.width,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Color(0xFFFFFBF0),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 160,
                                child: Text(
                                  'Блинчики\nс лесными ягодами',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF9DD153),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                child: Text(
                                  'Горячие сытные блинчики по-домашнему, с клубникой и черникой, политые сиропом.',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF476533).withOpacity(0.6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                width: 150,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      // isButton3Pressed = false;
                                      // isButton4Pressed = !isButton4Pressed;
                                      // buttonText2TextColor = isButton4Pressed
                                      //     ? Color(0xFFF7F0DA)
                                      //     : Color(0xFF5C913B);
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFE29845),
                                    ),
                                    // side: MaterialStateProperty.all(
                                    //   BorderSide(
                                    //     color: isButton4Pressed
                                    //         ? Colors.transparent
                                    //         : Color(0xFFE29845),
                                    //     width: 2.0,
                                    //   ),
                                    // ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(41),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'В корзину',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xFFFFFBF0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 190,
                                child: Image.asset('assets/photo/eat.png')),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 340,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07),
                        width: MediaQuery.of(context).size.width,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Color(0xFFFFFBF0),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 160,
                                child: Text(
                                  'Блинчики\nс лесными ягодами',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF9DD153),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                width: 160,
                                child: Text(
                                  'Горячие сытные блинчики по-домашнему, с клубникой и черникой, политые сиропом.',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF476533).withOpacity(0.6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                width: 150,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      // isButton3Pressed = false;
                                      // isButton4Pressed = !isButton4Pressed;
                                      // buttonText2TextColor = isButton4Pressed
                                      //     ? Color(0xFFF7F0DA)
                                      //     : Color(0xFF5C913B);
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFE29845),
                                    ),
                                    // side: MaterialStateProperty.all(
                                    //   BorderSide(
                                    //     color: isButton4Pressed
                                    //         ? Colors.transparent
                                    //         : Color(0xFFE29845),
                                    //     width: 2.0,
                                    //   ),
                                    // ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(41),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'В корзину',
                                    style: GoogleFonts.roboto(
                                        color: Color(0xFFFFFBF0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                width: 190,
                                child: Image.asset('assets/photo/eat2.png')),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Color(0xFF535D26), // Цвет контейнера
        ), // Ваш дочерний виджет
        height: 80,
        child: SizedBox( // Ограничиваем дочерние элементы BottomAppBar
          height: 30, // Задаем минимальную высоту
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset("assets/icons/lemon.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCityList(BuildContext context) async {
    final selectedCity = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'Выберите город',
            style: TextStyle(color: Colors.black),
          ),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Москва');
              },
              child: Text('Москва'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Санкт-Петербург');
              },
              child: Text('Санкт-Петербург'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Новосибирск');
              },
              child: Text('Новосибирск'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Сургут');
              },
              child: Text('Сургут'),
            ),
            // Добавьте свои города по аналогии
          ],
        );
      },
    );

    if (selectedCity != null) {
      setState(() {
        _selectedCity = selectedCity;
      });
    }
  }
}
