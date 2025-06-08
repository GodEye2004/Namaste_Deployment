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
          child: Stack(
            children: [
              Positioned(
                left: 144.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r),
                  ),
                  child: Container(
                    width: 539,
                    height: 600,
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
                          top: 50, // Adjusted to match image
                          left: 0,
                          right: 0,
                          child: Text(
                            'مدیتیشن های فناوری شده\nبا هوش مصنوعی',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.vazirmatn(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1B1B1C),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10.h, // Adjusted to match image
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/person.png',
                            width: 380.w,
                            height: 440,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: 80.w),

        /// سمت راست: عنوان، توضیح، لیست و دکمه‌ها
        Expanded(
          flex: 1,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start, // Adjusted alignment
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "ناماسته؛\n",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.vazirmatn(
                      fontSize: 32.sp,
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
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff1B1B1C),
                ),
              ),
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.only(left: 210),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "مدیتیشن های فناوری شده با هوش مصنوعی",
                      style: GoogleFonts.vazirmatn(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5),
                    const Icon(Icons.circle, size: 6, color: Colors.black),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 210),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "مدیتیشن های فناوری شده با هوش مصنوعی",
                      style: GoogleFonts.vazirmatn(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5),
                    const Icon(Icons.circle, size: 6, color: Colors.black),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 210),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "مدیتیشن های فناوری شده با هوش مصنوعی",
                      style: GoogleFonts.vazirmatn(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff1B1B1C),
                      ),
                    ),
                    SizedBox(width: 5),
                    const Icon(Icons.circle, size: 6, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDownloadButton(
                      text: 'دانلود وب اپلیکیشن برای آیفون',
                      icon: Icons.download,
                    ),
                    SizedBox(height: 20),
                    _buildDownloadButton(
                      text: 'دانلود وب اپلیکیشن برای اندروید',
                      icon: Icons.android,
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
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(486, 48),
        backgroundColor: const Color(0xff1B1B1C),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      icon: Icon(icon, size: 24.sp, color: Colors.white),
      label: Text(
        text,
        style: GoogleFonts.vazirmatn(fontSize: 16.sp, color: Colors.white),
      ),
    );
  }
}
