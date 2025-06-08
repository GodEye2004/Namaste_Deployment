import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                crossAxisAlignment: CrossAxisAlignment.end, // راست‌چین
                children: [
                  _buildBulletItem(
                    context,
                    "مدیتیشن های فناوری شده با هوش مصنوعی",
                  ),
                  _buildBulletItem(context, "صداهایی برای آرامش ذهن و بدن"),
                  _buildBulletItem(context, "هوش مصنوعی همراه با ذهن آگاهی"),
                  SizedBox(height: 70),
                  Center(
                    child: SizedBox(
                      width: 486,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1B1B1C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
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
                          backgroundColor: const Color(0xff1B1B1C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
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
