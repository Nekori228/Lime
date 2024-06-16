import 'package:flutter/material.dart';
import 'package:lime/globals.dart';

import 'menyEnter.dart';

class CartPage extends StatefulWidget {
  final Cart cart;

  CartPage({required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late List<int> _counts;

  @override
  void initState() {
    super.initState();
    _counts = List<int>.filled(widget.cart.items.length, 1);
  }

  void _incrementCount(int index) {
    setState(() {
      _counts[index]++;
    });
  }

  void _decrementCount(int index) {
    setState(() {
      if (_counts[index] > 1) {
        _counts[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    child: Text(
                      'Корзина',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF5C913B),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.cart.items.length,
                itemBuilder: (context, index) {
                  final item = widget.cart.items[index];
                  return ListTile(
                    title: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color(0xFFFFFBF0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    items2[index].photo,
                                  ),
                                ),
                                Text(
                                  items2[index].name,
                                  style: TextStyle(
                                      color: Color(0xFF9DD153),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Divider(
                              height: 1,
                              color: Color(0xFF5C913B),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                    '399Р',
                                    style: TextStyle(
                                      color: Color(0xFF9DD153),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.orange, width: 2),
                                      color: Colors.transparent,
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () => _decrementCount(index),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        Text(
                                          '${_counts[index]}',
                                          style: TextStyle(
                                              color: Colors.orange),
                                        ),
                                        GestureDetector(
                                          onTap: () => _incrementCount(index),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
