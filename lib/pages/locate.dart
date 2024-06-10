import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mapPage.dart';
import 'menyEnter.dart';

class LocatePage extends StatelessWidget {
  const LocatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: [
                  Image.asset('assets/photo/locateMap.png'),
                  SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => MapPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Color(0xFFE08C2F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Кафе на карте',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 10),
                          Image.asset('assets/icons/arrow2.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Связаться с поддержкой',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF5C913B),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        _launchCaller(
                            '+79224606589'); // Замените номером телефона на свой
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Color(0xFFE08C2F),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Text(
                              'Позвонить',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Image.asset('assets/icons/arrow2.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    height: 1,
                    color: Color(0xFF5C913B),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: GestureDetector(
                      onTap: () {
                        print('dd');
                      },
                      child: Row(
                        children: [
                          Text(
                            'Правовые документы',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5C913B)),
                          ),
                          Spacer(),
                          Image.asset('assets/icons/arrow1.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: GestureDetector(
                      onTap: () {
                        print('dd');
                      },
                      child: Row(
                        children: [
                          Text(
                            'О приложении',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5C913B)),
                          ),
                          Spacer(),
                          Image.asset('assets/icons/arrow1.png')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}

_launchCaller(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
