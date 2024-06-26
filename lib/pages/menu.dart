import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lime/globals.dart';
import 'package:lime/pages/test.dart';

import 'itemPage.dart';
import 'itemPage2.dart';
import 'menyEnter.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String _selectedCity = 'Выберите город';

  final ScrollController _scrollController = ScrollController();
  final GlobalKey _section1Key = GlobalKey();
  final GlobalKey _section2Key = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }
  }

  Color button1Color = Color(0xFFF7F0DA);
  Color button2Color = Color(0xFFF7F0DA);
  Color buttonText1TextColor = Color(0xFF5C913B);
  Color buttonText2TextColor = Color(0xFF5C913B);
  Color buttonText3TextColor = Color(0xFF5C913B);
  Color buttonText4TextColor = Color(0xFF5C913B);
  Color buttonText5TextColor = Color(0xFF5C913B);
  Color buttonText6TextColor = Color(0xFF5C913B);

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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    button1Color =
                                                        Color(0xFFD6A875);
                                                    button2Color =
                                                        Color(0xFFF7F0DA);

                                                    isButton1Pressed =
                                                        !isButton1Pressed;
                                                  });
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          button1Color),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0.0),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(5),
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  'Доставка',
                                                  style: GoogleFonts.roboto(
                                                    color: button1Color ==
                                                            Color(0xFF0D2100)
                                                        ? Color(0xFFF7F0DA)
                                                        : Color(0xFF0D2100),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: SizedBox(
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    button2Color =
                                                        Color(0xFFD6A875);
                                                    button1Color =
                                                        Color(0xFFF7F0DA);
                                                                                        
                                                    isButton2Pressed =
                                                        !isButton2Pressed;
                                                  });
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          button2Color),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0.0),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(5),
                                                    ),
                                                  ),
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
                            isButton1Pressed = !isButton1Pressed;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton1Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton1Pressed ? Colors.transparent : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(41),
                            ),
                          ),
                        ),
                        child: Text(
                          'Закуски',
                          style: GoogleFonts.roboto(
                            color: isButton1Pressed ? Colors.white : Color(0xFF5C913B),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton2Pressed = !isButton2Pressed;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton2Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton2Pressed ? Colors.transparent : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(41),
                            ),
                          ),
                        ),
                        child: Text(
                          'Завтраки',
                          style: GoogleFonts.roboto(
                            color: isButton2Pressed ? Colors.white : Color(0xFF5C913B),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isButton3Pressed = !isButton3Pressed;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton3Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton3Pressed ? Colors.transparent : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(41),
                            ),
                          ),
                        ),
                        child: Text(
                          'Салаты',
                          style: GoogleFonts.roboto(
                            color: isButton3Pressed ? Colors.white : Color(0xFF5C913B),
                            fontSize: 16,
                          ),
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
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isButton4Pressed ? Color(0xFF5C913B) : null,
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: isButton4Pressed ? Colors.transparent : Color(0xFF5C913B),
                              width: 2.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(41),
                            ),
                          ),
                        ),
                        child: Text(
                          'Сытное',
                          style: GoogleFonts.roboto(
                            color: isButton4Pressed ? Colors.white : Color(0xFF5C913B),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ItemPage2(),
                    ),
                  );
                },
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: SizedBox(
                        height: 300,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Stack(
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: constraints.maxWidth * 0.07),
                                    width: constraints.maxWidth,
                                    height: constraints.maxHeight * 0.8,
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
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                width: constraints.maxWidth * 0.4,
                                                child: Text(
                                                  items2[index].name,
                                                  style: GoogleFonts.roboto(
                                                      color: Color(0xFF9DD153),
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.w900),
                                                ),
                                              ),
                                              SizedBox(
                                                width: constraints.maxWidth * 0.4,
                                                child: Text(
                                                  items2[index].description,
                                                  style: GoogleFonts.roboto(
                                                      color: Color(0xFF476533).withOpacity(0.6),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                              Spacer(),
                                              SizedBox(
                                                width: constraints.maxWidth * 0.4,
                                                child: TextButton(
                                                  onPressed: () {
                                                    cart.add(items[index]);
                                                  },
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all(
                                                      Color(0xFFE29845),
                                                    ),
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
                                              SizedBox(
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 45),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: constraints.maxWidth * 0.43,
                                            height: constraints.maxHeight * 0.43,
                                            child: Image.asset(
                                              items2[index].photo,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(20.0),
      //       topRight: Radius.circular(20.0),
      //     ),
      //     color: Color(0xFF535D26), // Цвет контейнера
      //   ), // Ваш дочерний виджет
      //   height: 80,
      //   child: SizedBox( // Ограничиваем дочерние элементы BottomAppBar
      //     height: 30, // Задаем минимальную высоту
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: <Widget>[
      //         IconButton(
      //           icon: _image1,
      //           onPressed: () {
      //             setState(() {
      //               _image1 = Image.asset("assets/icons/lemonIconPresed.png");
      //             });
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => SecondScreen()),
      //             );
      //           },
      //         ),
      //         IconButton(
      //           icon: _image2,
      //           onPressed: () {
      //             setState(() {
      //               _image2 = Image.asset("assets/icons/memesIconPresed.png");
      //             });
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => SecondScreen()),
      //             );
      //           },
      //         ),
      //         IconButton(
      //           icon: _image3,
      //           onPressed: () {
      //             setState(() {
      //               _image3 = Image.asset("assets/icons/LocationIconPresed.png");
      //             });
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => SecondScreen()),
      //             );
      //           },
      //         ),
      //         IconButton(
      //           icon: _image4,
      //           onPressed: () {
      //             setState(() {
      //               _image4 = Image.asset("assets/icons/shoppingconPresed.png");
      //             });
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => SecondScreen()),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Image _image1 = Image.asset("assets/icons/limeMenu.png");
  Image _image2 = Image.asset("assets/icons/memesIcons.png");
  Image _image3 = Image.asset("assets/icons/locationIcons.png");
  Image _image4 = Image.asset("assets/icons/shoppingIcons.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Color(0xFF535D26), // Цвет контейнера
        ), // Ваш дочерний виджет
        height: 80,
        child: SizedBox(
          // Ограничиваем дочерние элементы BottomAppBar
          height: 30, // Задаем минимальную высоту
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: _image1,
                onPressed: () {
                  setState(() {
                    _image1 = Image.asset("assets/icons/lemonIconPresed.png");
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
              IconButton(
                icon: _image2,
                onPressed: () {
                  setState(() {
                    _image2 = Image.asset("assets/icons/memesIconPresed.png");
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
              IconButton(
                icon: _image3,
                onPressed: () {
                  setState(() {
                    _image3 =
                        Image.asset("assets/icons/LocationIconPresed.png");
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
              IconButton(
                icon: _image4,
                onPressed: () {
                  setState(() {
                    _image4 = Image.asset("assets/icons/shoppingconPresed.png");
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
