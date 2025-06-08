import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
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
              child: Image.asset('assets/logo.JPG', fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
