import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/Desktop%20widget/footer.dart';
import 'package:flutter_application_1/landing/Desktop%20widget/landingherosection.dart';
import 'package:flutter_application_1/landing/Desktop%20widget/card.dart';
import 'package:flutter_application_1/landing/Desktop%20widget/nav.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _LandingDesktopState();
}

class _LandingDesktopState extends State<LandingDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Navigation Bar
              Nav(),
              //main part
              Container(
                constraints: BoxConstraints(
                  maxHeight: screenHeight * 0.8, // محدود کردن ارتفاع
                ),
                child: LandingHeroSection(),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "خدمات ما",
                    style: GoogleFonts.vazirmatn(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff1B1B1C),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // _buildServiceGrid(context),
                  CardStyles(),
                  const SizedBox(height: 144),
                  FooterWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildServiceItem(
  BuildContext context,
  String title,
  Color backgroundColor,
  String imagePath,
) {
  return Container(
    width: 416,
    height: 384,
    margin: const EdgeInsets.all(50),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0xffF3F3F3), width: 1),
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 200,
          height: 200,
        ), // اندازه تصویر رو هم مناسب تغییر بده
        const SizedBox(height: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.vazirmatn(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: const Color(0xff1B1B1C),
          ),
        ),
      ],
    ),
  );
}

Widget _buildServiceGrid(BuildContext context) {
  final List<Map<String, dynamic>> serviceData = [
    {
      'title': 'مشاوره',
      'color': const Color(0xffFFF),
      'image': 'assets/icon1.png',
    },
    {
      'title': 'رزرو نوبت',
      'color': Color(0xffF3F3F3),
      'image': 'assets/icon2.png',
    },
    {
      'title': 'سوابق',
      'color': const Color(0xffFFF),
      'image': 'assets/icon3.png',
    },
    {
      'title': 'آزمایش',
      'color': Color(0xffF3F3F3),
      'image': 'assets/icon4.png',
    },
    {
      'title': 'داروخانه',
      'color': const Color(0xffFFF),
      'image': 'assets/icon5.png',
    },
    {'title': 'تماس', 'color': Color(0xffF3F3F3), 'image': 'assets/icon6.png'},
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children:
          serviceData
              .map(
                (data) => _buildServiceItem(
                  context,
                  data['title'],
                  data['color'],
                  data['image'],
                ),
              )
              .toList(),
    ),
  );
}

Widget _buildBackgroundImage(BuildContext context) {
  return Container(
    // width: 1000,
    height: MediaQuery.of(context).size.height * 0.4,

    child: Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.height * 100,
        child: Image.asset(
          'assets/background.png',
          fit: BoxFit.contain,
          width: double.infinity,
        ),
      ),
    ),
  );
}
