// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiles extends StatelessWidget {
  final String ImagePath;
  final String title;
  final String subTitle;
  const Tiles({Key? key, required this.ImagePath, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ), 
                height: 80,
                child: Image.asset(ImagePath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subTitle,
                    style: GoogleFonts.roboto(
                        fontSize: 18, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}
