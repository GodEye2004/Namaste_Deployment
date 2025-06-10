import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingHeroSection extends StatelessWidget {
  const LandingHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// سمت چپ: تصویر با پس‌زمینه و متن روی آن
        Expanded(
          flex: 1,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double scaleFactor = screenWidth < 768 ? screenWidth / 768 : 1.0;

              return Stack(
                children: [
                  Positioned(
                    left: 144.w * scaleFactor,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Container(
                        width: 489.w * scaleFactor,
                        height: 3100.h * scaleFactor,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/frame.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.r),
                            bottomRight: Radius.circular(40.r),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 50 * scaleFactor,
                              left: 0,
                              right: 0,
                              child: Text(
                                'مدیتیشن های فناوری شده\nبا هوش مصنوعی',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.vazirmatn(
                                  fontSize: 18.sp * scaleFactor,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff1B1B1C),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10.h * scaleFactor,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                'assets/person.png',
                                width: 380.w * scaleFactor,
                                height: 2100.h * scaleFactor,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),

        SizedBox(width: 80.w),

        /// سمت راست: عنوان، توضیح، لیست و دکمه‌ها
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 150.w),
                  child: Text(
                    "ناماسته؛\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IRANYekanX',
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1B1B1C),
                    ),
                  ),
                ),
              ),
              Text(
                "اولین و تنها مرکز مدیتیشن ، ذهن آگاهی و\nتعامل کاربران ایرانی",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'IRANYekanX',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1B1B1C),
                ),
              ),

              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.only(left: 235.w),
                child: Row(
                  children: [
                    Text(
                      "مدیتیشن های فناوری شده با هوش مصنوعی",
                      style: TextStyle(
                        fontFamily: 'IRANYekanX',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Icon(Icons.circle, size: 6.sp, color: Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 292.w),
                child: Row(
                  children: [
                    Text(
                      " داستان های صوتی و موزیک بی کلام",
                      style: TextStyle(
                        fontFamily: 'IRANYekanX',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Icon(Icons.circle, size: 6.sp, color: Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 315.w),
                child: Row(
                  children: [
                    Text(
                      "چت روم های عمومی و اختصاصی",
                      style: TextStyle(
                        fontFamily: 'IRANYekanX',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Icon(Icons.circle, size: 6.sp, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(right: 50.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDownloadButton(
                      icon: Icons.apple,
                      text: 'دانلود وب اپلیکیشن برای آیفون',
                    ),
                    SizedBox(height: 20),
                    _buildDownloadButton(
                      icon: Icons.android,
                      text: 'دانلود وب اپلیکیشن برای اندروید',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDownloadButton({required String text, required IconData icon}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(486, 48),
        backgroundColor: const Color(0xff1B1B1C),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: GoogleFonts.vazirmatn(fontSize: 16.sp, color: Colors.white),
          ),
          SizedBox(width: 8.w), // Space between text and icon
          Icon(icon, size: 24.sp, color: Colors.white),
        ],
      ),
    );
  }
}
