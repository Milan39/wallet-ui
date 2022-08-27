// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, use_key_in_widget_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final String ImagePath;
  final double balance;
  final int cardNumber;
  final int expiryYear;
  final int expiryMonth;
  final color;

  const MyCard({
    super.key,
    required this.ImagePath,
    required this.balance,
    required this.cardNumber,
    required this.expiryYear,
    required this.expiryMonth,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        height: 170,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(17)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                ),
                Image.asset(
                  ImagePath,
                  height: 60,
                ),
              ],
            ),
            Text(
              '\$' + balance.toString(),
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                ),
                Text(
                  expiryYear.toString() + '/' + expiryMonth.toString(),
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
