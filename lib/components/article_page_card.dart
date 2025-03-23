import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePageCard extends StatelessWidget {
  const ArticlePageCard({super.key, required this.title, required this.imageUrl, required this.description, required this.dateCreated, required this.detail});

  final String title, imageUrl, description, dateCreated;
  final List detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Color(0xFFD9D9D9), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 5))
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Image.asset(imageUrl),
                SizedBox(height: 10),
                Text(dateCreated, style: GoogleFonts.poppins(color: Color(0xFF898989), fontSize: 12, fontWeight: FontWeight.w600))
              ]
            )
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600)),
                SizedBox(height: 5),
                Text(description, maxLines: 3, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400))
              ]
            ),
          )
        ]
      )
    );
  }
}