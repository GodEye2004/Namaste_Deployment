import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardStyles extends StatefulWidget {
  const CardStyles({super.key});

  @override
  State<CardStyles> createState() => _CardStylesState();
}

class _CardStylesState extends State<CardStyles> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ردیف اول (سه کارت اول)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 120.0,
              vertical: 8.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard(
                    image: 'assets/none.png',
                    title: 'چت روم',
                    subtitle: 'گفتگو به صورت ناشناس!',
                    description:
                        'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                        'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                    backgroundColor: Colors.white,
                  ),
                  _buildCard(
                    image: 'assets/book.png',
                    title: 'داستان صوتی',
                    subtitle: 'جادویی برای ذهن خسته',
                    description:
                        'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                        'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                    backgroundColor: Color(0xffF3F3F3),
                  ),
                  _buildCard(
                    image: 'assets/man.png',
                    title: 'مدیتیشن',
                    subtitle: 'فناوری شده با هوش مصنوعی',
                    description:
                        'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید.\n'
                        'اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد.',
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // ردیف دوم (سه کارت جدید)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 120.0,
              vertical: 8.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard(
                    image: 'assets/pen.png',
                    title: 'موسیقی آرامش‌بخش',
                    subtitle: 'برای تمرکز و آرامش',
                    description:
                        'موسیقی‌هایی با ریتم ملایم و هماهنگ که ذهن شما را به سفری آرامش‌بخش می‌برند.\n'
                        'این بخش به شما کمک می‌کند تا در میان شلوغی روزمره، لحظاتی از آرامش را تجربه کنید.',
                    backgroundColor: Colors.white,
                  ),
                  _buildCard(
                    image: 'assets/man.png',
                    title: 'یوگا',
                    subtitle: 'تمرین برای جسم و ذهن',
                    description:
                        'تمرین‌های یوگا با راهنمایی قدم‌به‌قدم برای بهبود انعطاف‌پذیری و کاهش استرس.\n'
                        'مناسب برای همه سطوح، از مبتدی تا حرفه‌ای.',
                    backgroundColor: Color(0xffF3F3F3),
                  ),
                  _buildCard(
                    image: 'assets/note.png',
                    title: 'یادداشت روزانه',
                    subtitle: 'فضای شخصی برای افکار',
                    description:
                        'فضایی امن برای نوشتن افکار و احساسات روزانه‌تان.\n'
                        'با ابزارهای هوشمند اپلیکیشن، می‌توانید الگوهای احساسی خود را تحلیل کنید.',
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // کارد جدید زیر همه کارت‌ها
          SizedBox(
            height: 800,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // تصویر پس‌زمینه
                Image.asset(
                  'assets/background.png', // عکس دلخواهت
                  // width: 1400,
                  // height: 600,
                  fit: BoxFit.cover,
                ),

                // کانتینر سفید که تا وسط تصویر قرار می‌گیره
                Positioned(
                  top: 160, // تا وسط عکس میاد روی عکس
                  left: 120,
                  right: 120,
                  child: Container(
                    width: 1200,
                    height: 532,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'مدیتیشن چیست ؟',
                            style: GoogleFonts.vazirmatn(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'ناماسته چطور به ما کمک میکند ؟',
                            style: GoogleFonts.vazirmatn(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Container(
                          color: Color(0xffE0E0E0),
                          height: 101,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'مدیتیشن، یعنی تمرین آگاهی. یعنی برگردوندن ذهن به لحظه‌ی حال، فارغ از گذشته و آینده',
                                  style: GoogleFonts.vazirmatn(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  'با تنفس، سکوت و تمرکز، به ذهنمون یاد می‌دیم که آرام‌تر و متعادل‌تر باشه.',
                                  style: GoogleFonts.vazirmatn(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/testing.png',
                                width: 384,
                                height: 247,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 110),
          SizedBox(
            height: 300, // بیشتر از top: 200
            child: Stack(
              clipBehavior: Clip.none, // اگر خواستی تصویر بیرون بزنه
              children: [
                Image.asset('assets/images.png'),

                Positioned(
                  bottom: 90, // حالا میاد بالاتر از عکس پایین
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/mobile.png',
                    fit: BoxFit.contain,
                    height: 300, // می‌تونی اندازه هم مشخص کنی
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(486, 48),
                  backgroundColor: const Color(0xff1B1B1C),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 14.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.do_disturb, size: 24.sp, color: Colors.white),
                label: Text(
                  'دانلود وب اپلیکیشن برای اندروید',
                  style: GoogleFonts.vazirmatn(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(486, 48),
                  backgroundColor: const Color(0xff1B1B1C),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 14.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.do_disturb, size: 24.sp, color: Colors.white),
                label: Text(
                  'دانلود وب اپلیکیشن برای آیفون',
                  style: GoogleFonts.vazirmatn(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String image,
    required String title,
    required String subtitle,
    required String description,
    required Color backgroundColor,
  }) {
    return Container(
      width: 384,
      constraints: BoxConstraints(minHeight: 416),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
        border: Border.all(color: Color(0xffF3F3F3), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image, width: 336, height: 120),
            SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.vazirmatn(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff1A1A1A),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
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
                description,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 14, height: 1.2),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
