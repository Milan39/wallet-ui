// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String ImagePath;
  final String title;
  const MyButton({Key? key, required this.ImagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 16,
                spreadRadius: 1.5,
              ),
            ],
          ),
          height: 80,
          child: Image.asset(ImagePath),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
