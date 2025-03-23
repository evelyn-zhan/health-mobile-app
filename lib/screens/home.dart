import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_mobile_app/components/article_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good day, Cinnamon 👋', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700)),
                            Text('How are you today?', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF898989)))
                          ]
                        )
                      ]
                    ),
                  ),
                  Container(
                    width: 50, height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(5)
                    )
                  )
                ]
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Text("Today's Health Summary", style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600))
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Color(0xFFD9D9D9), spreadRadius: 1, blurRadius: 3, offset: Offset(0, 5))
                        ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Steps', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
                              SizedBox(height: 11),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: '3,200 ', style: GoogleFonts.poppins(color: Color(0xFF16A34A), fontSize: 20, fontWeight: FontWeight.w700)),
                                    TextSpan(text: 'steps', style: GoogleFonts.poppins(color: Color(0xFF898989), fontSize: 15, fontWeight: FontWeight.w600))
                                  ]
                                )
                              )
                            ]
                          ),
                          Spacer(),
                          Image.asset('assets/shoe-icon.png', width: 30, height: 30)
                        ]
                      )
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(15),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Water', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
                              SizedBox(height: 11),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: '1.5 ', style: GoogleFonts.poppins(color: Color(0xFF0284C7), fontSize: 20, fontWeight: FontWeight.w700)),
                                    TextSpan(text: 'Litres', style: GoogleFonts.poppins(color: Color(0xFF898989), fontSize: 15, fontWeight: FontWeight.w600))
                                  ]
                                )
                              )
                            ]
                          ),
                          Spacer(),
                          Image.asset('assets/water-icon.png', width: 28, height: 28)
                        ]
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Daily Mission', style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600))
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity, height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFD9D9D9), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 5))
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/3d-target.png', width: 45, height: 45),
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('5,000 steps in a day', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w700)),
                        Text('Keep moving, stay healthy!', style: GoogleFonts.poppins(color: Color(0xFF898989), fontSize: 13, fontWeight: FontWeight.w500))
                      ]
                    )
                  ]
                )
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity, height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFD9D9D9), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 5))
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/mineral-water.png', width: 45, height: 45),
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2 Litres in a day', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w700)),
                        Text("Don't forget to stay hydrated!", style: GoogleFonts.poppins(color: Color(0xFF898989), fontSize: 13, fontWeight: FontWeight.w500))
                      ]
                    )
                  ]
                )
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Featured Articles', style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600))
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    ArticleCard(
                      imageUrl: 'assets/article-1.png',
                      title: 'Why Sleep is Your Superpower for Better Health',
                      summary: 'Sleeping 100 hours will make you healthy'
                    ),
                    SizedBox(width: 10),
                    ArticleCard(
                      imageUrl: 'assets/article-3.jpg',
                      title: 'Hydration Hacks: Drink Smarter, Stay Healthier',
                      summary: 'Simple ways to track water intake and avoid dehydration'
                    ),
                    SizedBox(width: 10),
                    ArticleCard(
                      imageUrl: 'assets/article-4.jpg',
                      title: 'Superfoods You Should Eat Every Week',
                      summary: 'Nutrient-packed foods to improve overall well-being'
                    )
                  ]
                ),
              )
            ]
          )
        ),
      )
    );
  }
}