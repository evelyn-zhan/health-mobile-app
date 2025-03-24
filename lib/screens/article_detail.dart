import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({
    super.key,
    required this.title,
    required this.dateCreated,
    required this.imageUrl,
    required this.detail
  });

  final String title, dateCreated, imageUrl;
  final List detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 70, 10, 40),
                color: Color(0xFF1E1E1E),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(overlayColor: Colors.transparent),
                      icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 20),
                      label: Text('Back', style: GoogleFonts.poppins(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationColor: Colors.white))
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, maxLines: 2, style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                          SizedBox(height: 10),
                          Text(dateCreated, style: GoogleFonts.poppins(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                          SizedBox(height: 25),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(imageUrl, width: double.infinity, height: 160, fit: BoxFit.cover),
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              ...detail.map((paragraph) {
                return
                Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Text(paragraph, textAlign: TextAlign.justify, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400))
                );
              })
            ]
          ),
        )
      )
    );
  }
}