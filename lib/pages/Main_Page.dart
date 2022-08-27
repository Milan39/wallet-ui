// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/pages/VisaCard.dart';
import 'package:walletui/pages/buttons.dart';
import 'package:walletui/pages/listTiles.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final _controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey[300],
          child: Icon(
            Icons.monetization_on_rounded,
            size: 40,
            color: Colors.grey,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'lib/icons/home.png',
                  color: Colors.grey[800],
                  height: 45,
                ),
                Image.asset(
                  'lib/icons/settings.png',
                  color: Colors.grey[800],
                  height: 45,
                )
              ]),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: GoogleFonts.roboto(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Card',
                        style: GoogleFonts.roboto(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Icon(
                      Icons.add,
                      size: 30,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
        
              // Visa card
              Container(
                height: 180,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      ImagePath: 'lib/icons/visa.png',
                      balance: 5201.5,
                      cardNumber: 4556297647,
                      expiryYear: 2024,
                      expiryMonth: 10,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      ImagePath: 'lib/icons/visa.png',
                      balance: 321.25,
                      cardNumber: 4929220239,
                      expiryYear: 2023,
                      expiryMonth: 7,
                      color: Colors.blue[300],
                    ),
                    MyCard(
                      ImagePath: 'lib/icons/visa.png',
                      balance: 5201.5,
                      cardNumber: 4006029140,
                      expiryYear: 2022,
                      expiryMonth: 5,
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
        
              // Smooth indicator
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    activeDotColor: Colors.grey.shade800,
                    dotColor: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
        
              // three Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyButton(
                    ImagePath: 'lib/icons/send.png',
                    title: "Send",
                  ),
                  MyButton(
                    ImagePath: 'lib/icons/credit.png',
                    title: "pay",
                  ),
                  MyButton(
                    ImagePath: 'lib/icons/bill.png',
                    title: "Bill",
                  )
                ],
              ),
        
              SizedBox(
                height: 20,
              ),
        
              // Listtiles
              Column(
                children: [
                  Tiles(
                    ImagePath: "lib/icons/statistics.png",
                    title: "Statistics",
                    subTitle: "Payment and income",
                  ),
                  Tiles(
                    ImagePath: "lib/icons/pay.png",
                    title: "Transaction",
                    subTitle: "Transaction History",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
