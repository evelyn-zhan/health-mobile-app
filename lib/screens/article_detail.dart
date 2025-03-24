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
                padding: EdgeInsets.fromLTRB(15, 70, 15, 30),
                color: Color(0xFF3A3939),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(overlayColor: Colors.transparent),
                      icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 20),
                      label: Text('Back', style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationColor: Colors.white))
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, maxLines: 2, style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                          SizedBox(height: 5),
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
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: detail.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(25),
                    color: index % 2 == 0 ? Colors.white : Color(0xFF3A3939),
                    child: Text(
                      detail[index],
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        color: index % 2 == 0 ? Colors.black : Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                      )
                    )
                  );
                }
              )
            ]
          )
        )
      )
    );
  }
}