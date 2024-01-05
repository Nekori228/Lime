import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  bool isButton1Pressed = false;
  bool isButton2Pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: Container(
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
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color(0xFFE5D8AC),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xFFF7F0DA),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          button1Color = Color(0xFFD6A875);
                                          button2Color = Color(0xFFF7F0DA);

                                          isButton1Pressed = !isButton1Pressed;
                                        });
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                button1Color),
                                        elevation:
                                            MaterialStateProperty.all(0.0),
                                      ),
                                      child: Text(
                                        'Кнопка 1',
                                        style: GoogleFonts.roboto(
                                            color: button2Color ==
                                                    Color(0xFFD6A875)
                                                ? Color(0xFF0D2100)
                                                : Color(0xFFF7F0DA),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  SizedBox(
                                    width: 180,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          button2Color = Color(0xFFD6A875);
                                          button1Color = Color(0xFFF7F0DA);

                                          isButton2Pressed = !isButton2Pressed;
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
                                        'Кнопка 2',
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

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isButton1Pressed = !isButton1Pressed;
                                isButton2Pressed = false;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                isButton1Pressed ? Colors.greenAccent : null,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: isButton1Pressed ? Colors.transparent : Colors.green,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: Text('Кнопка 1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isButton2Pressed = !isButton2Pressed;
                                isButton1Pressed = false;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                isButton2Pressed ? Colors.greenAccent : null,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: isButton2Pressed ? Colors.transparent : Colors.green,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: Text('Кнопка 2'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isButton2Pressed = !isButton2Pressed;
                                isButton1Pressed = false;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                isButton2Pressed ? Colors.greenAccent : null,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: isButton2Pressed ? Colors.transparent : Colors.green,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: Text('Кнопка 2'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isButton2Pressed = !isButton2Pressed;
                                isButton1Pressed = false;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                isButton2Pressed ? Colors.greenAccent : null,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: isButton2Pressed ? Colors.transparent : Colors.green,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: Text('Кнопка 2'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
