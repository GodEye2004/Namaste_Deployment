import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardStyles extends StatefulWidget {
  const CardStyles({super.key});

  @override
  State<CardStyles> createState() => _CardStylesState();
}

class _CardStylesState extends State<CardStyles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/none.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'چت روم',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'گفتگو به صورت ناشناس!',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                          'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14, height: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF3F3F3),
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/book.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'داستان صوتی',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'جادویی برای ذهن خسته',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n\n'
                          'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14, height: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/man.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'مدیتیشن',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'فناوری شده با هوش مصنوعی',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید.\n\n'
                          'اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد.\n\n',

                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        //changing it tomarrow
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/none.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'چت روم',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'گفتگو به صورت ناشناس!',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                          'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14, height: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF3F3F3),
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/book.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'داستان صوتی',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'جادویی برای ذهن خسته',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n\n'
                          'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14, height: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 384,
                // height: 416,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF3F3F3), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/man.png',
                        // fit: BoxFit.cover,
                        width: 336,
                        height: 120,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'مدیتیشن',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'فناوری شده با هوش مصنوعی',
                        style: GoogleFonts.vazirmatn(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1A1A1A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید.\n\n'
                          'اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد.\n\n',

                          textAlign: TextAlign.center, // ✅ وسط‌چین افقی
                          textDirection: TextDirection.rtl, // ✅ جهت راست‌به‌چپ
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
