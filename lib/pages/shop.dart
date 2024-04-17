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
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2C7),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'Корзина',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF5C913B)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 460,
              height: 700,
              child: ListView.builder(
                itemCount: widget.cart.items.length,
                itemBuilder: (context, index) {
                  final item = widget.cart.items[index];
                  return ListTile(
                    title: SizedBox(
                      height: 200,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07),
                        width: MediaQuery.of(context).size.width,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Color(0xFFFFFBF0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
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
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.orange, width: 2),
                                        color: Colors.transparent,
                                      ),
                                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: _decrementCount,
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.orange,
                                            ),
                                          ),
                                          Text(
                                            '$_count',
                                            style: TextStyle(color: Colors.orange),
                                          ),
                                          GestureDetector(
                                            onTap: _incrementCount,
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
