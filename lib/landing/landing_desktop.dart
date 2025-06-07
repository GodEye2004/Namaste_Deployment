import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/widget/card.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _LandingDesktopState();
}

class _LandingDesktopState extends State<LandingDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Navigation Bar
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // دکمه دانلود اپلیکیشن
                      Container(
                        width: 200,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff909097)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'دانلود اپلیکیشن',
                            style: GoogleFonts.vazirmatn(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1B1B1C),
                            ),
                          ),
                        ),
                      ),
                      // منوی ناوبری
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مجله',
                              style: GoogleFonts.vazirmatn(
                                fontSize: 14,
                                color: const Color(0xff1B1B1C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'تماس با ما',
                              style: GoogleFonts.vazirmatn(
                                fontSize: 14,
                                color: const Color(0xff1B1B1C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'درباره ما',
                              style: GoogleFonts.vazirmatn(
                                fontSize: 14,
                                color: const Color(0xff1B1B1C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'سرویس‌ها',
                              style: GoogleFonts.vazirmatn(
                                fontSize: 14,
                                color: const Color(0xff1B1B1C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'خانه',
                              style: GoogleFonts.vazirmatn(
                                fontSize: 14,
                                color: const Color(0xff1B1B1C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // لوگو
                      SizedBox(
                        width: 120,
                        height: 80,
                        child: Image.asset(
                          'assets/logo.JPG',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // بخش اصلی
              Container(
                constraints: BoxConstraints(
                  maxHeight: screenHeight * 0.8, // محدود کردن ارتفاع
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // بخش تصویر و متن
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRect(
                          // اضافه کردن ClipRect برای جلوگیری از سرریز
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/frame.png',
                                    height: screenHeight * 0.7,
                                    width: screenWidth * 0.4,
                                    fit: BoxFit.contain,
                                  ),
                                  Positioned(
                                    top: screenHeight * 0.1,
                                    left: 0,
                                    right: 0,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "مدیتیشن های فناوری شده\nبا هوش مصنوعی",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.vazirmatn(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff1B1B1C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: screenHeight * 0.1 + 78,
                                    left: 0,
                                    right: 0,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/person.png',
                                        height: screenHeight * 0.5,
                                        width: screenWidth * 0.3,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // بخش خوش‌آمدگویی
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width *
                                      0.11, // 15% از عرض صفحه
                                ),
                                child: Text(
                                  "ناماسته؛\n",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.vazirmatn(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff1B1B1C),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "اولین و تنها مرکز مدیتیشن ، ذهن آگاهی و\nتعامل کاربران ایرانی",
                              textAlign: TextAlign.end,
                              style: GoogleFonts.vazirmatn(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff1B1B1C),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.end, // راست‌چین
                                children: [
                                  _buildBulletItem(
                                    context,
                                    "مدیتیشن های فناوری شده با هوش مصنوعی",
                                  ),
                                  _buildBulletItem(
                                    context,
                                    "صداهایی برای آرامش ذهن و بدن",
                                  ),
                                  _buildBulletItem(
                                    context,
                                    "هوش مصنوعی همراه با ذهن آگاهی",
                                  ),
                                  SizedBox(height: 70),
                                  Center(
                                    child: SizedBox(
                                      width: 486,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xff1B1B1C,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'دانلود وب اپلیکیشن برای آیفون',
                                          style: GoogleFonts.vazirmatn(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 45),
                                  Center(
                                    child: SizedBox(
                                      width: 486,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xff1B1B1C,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'دانلود وب اپلیکیشن برای آیفون',
                                          style: GoogleFonts.vazirmatn(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // المان‌های اضافی
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
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildBulletItem(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Padding(
      padding: EdgeInsets.only(
        // top: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.11,
      ), // حدود 2% از عرض صفحه
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // راست‌چین
        crossAxisAlignment:
            CrossAxisAlignment.baseline, // هم‌ترازی دقیق متن و نقطه
        textBaseline: TextBaseline.alphabetic, // لازم برای baseline alignment
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.right,
              style: GoogleFonts.vazirmatn(
                fontSize: 16,
                height: 1.3,
                fontWeight: FontWeight.w400,
                color: const Color(0xff1B1B1C),
              ),
            ),
          ),
          Text(
            ".", // نقطه در سمت راست
            style: TextStyle(
              fontSize: 28,
              height: 1.0,
              color: Color(0xff1B1B1C),
            ),
          ),
        ],
      ),
    ),
  );
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
