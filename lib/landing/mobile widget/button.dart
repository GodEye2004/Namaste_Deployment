import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(342, 48),
            backgroundColor: const Color(0xff1B1B1C),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "دانلود وب اپلیکیشن برای آیفون",
                style: GoogleFonts.vazirmatn(fontSize: 14, color: Colors.white),
              ),
              SizedBox(width: 8), // Space between text and icon
              Icon(Icons.apple, size: 24, color: Colors.white),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(342, 48),
            backgroundColor: const Color(0xff1B1B1C),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "دانلود وب اپلیکیشن برای اندروید",
                style: GoogleFonts.vazirmatn(fontSize: 14, color: Colors.white),
              ),
              SizedBox(width: 8), // Space between text and icon
              Icon(Icons.android, size: 24, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
