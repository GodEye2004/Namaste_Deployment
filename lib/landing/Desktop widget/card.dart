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
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isDesktop = screenWidth >= 1435;
        final isTablet = screenWidth >= 768 && screenWidth < 1200;
        final isMobile = screenWidth < 768;

        return SingleChildScrollView(
          child: Column(
            children: [
              // ردیف اول (سه کارت اول)
              _buildCardRow(
                isDesktop: isDesktop,
                isTablet: isTablet,
                isMobile: isMobile,
                screenWidth: screenWidth,
                cards: [
                  {
                    'image': 'assets/none.png',
                    'title': 'چت روم',
                    'subtitle': 'گفتگو به صورت ناشناس!',
                    'description':
                        'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                        'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                    'backgroundColor': Colors.white,
                  },
                  {
                    'image': 'assets/book.png',
                    'title': 'داستان صوتی',
                    'subtitle': 'جادویی برای ذهن خسته',
                    'description':
                        'گاهی فقط لازمه بشینی، چشم‌هاتو ببندی و خودتو بسپری به صدایی که با هر کلمه تو رو به دنیایی دیگه می‌بره.\n'
                        'در بخش «داستان صوتی» اپلیکیشن، روایت‌هایی کوتاه، احساسی و آرام‌بخش رو می‌شنوی که ذهن‌تو از تنش‌های روز جدا می‌کنه و به آرامش دعوتت می‌کنه.',
                    'backgroundColor': Color(0xffF3F3F3),
                  },
                  {
                    'image': 'assets/man.png',
                    'title': 'مدیتیشن',
                    'subtitle': 'فناوری شده با هوش مصنوعی',
                    'description':
                        'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید.\n'
                        'اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد.',
                    'backgroundColor': Colors.white,
                  },
                ],
              ),

              // ردیف دوم (سه کارت جدید)
              _buildCardRow(
                isDesktop: isDesktop,
                isTablet: isTablet,
                isMobile: isMobile,
                screenWidth: screenWidth,
                cards: [
                  {
                    'image': 'assets/pen.png',
                    'title': 'چالش های روزانه',
                    'subtitle': 'گفتگوی زنده ولی ناشناس!',
                    'description':
                        'هر روز یک چالش تازه اینجا منتظرته. چالشی که درست وسط روز میاد و تو رو وارد یک گفت‌وگوی زنده می‌کنه.\n'
                        'تو فقط یه بار جواب می‌دی، اما می‌تونی با بقیه تعامل کنی، جواب‌هاشون رو بخونی، ریپلای بزنی، الهام بگیری.',
                    'backgroundColor': Colors.white,
                  },
                  {
                    'image': 'assets/man.png',
                    'title': 'شکرگزاری روزانه',
                    'subtitle': 'عادت معجزه ساز',
                    'description':
                        'توی دنیایی که مدام عجله داره، یه لحظه وایسا…\n'
                        'نگاه کن به چیزای کوچیکی که خوشحالت کردن. یه پیام از یه دوست، نور آفتاب روی صورتت، یا حتی اون بوی قهوه‌ی اول صبح.',

                    'backgroundColor': Color(0xffF3F3F3),
                  },
                  {
                    'image': 'assets/note.png',
                    'title': 'ثبت هوشمند خاطرات',
                    'subtitle': 'دیجیتال، امن و فقط برای خودت',
                    'description':
                        'احساساتت رو بنویس، عکس‌های خاص روزت رو ذخیره کن، غذاهایی که خوردی رو ثبت کن.\n'
                        'چیزهایی که یاد گرفتی یا تجربه کردی رو یادداشت کن و حتی دستاوردهای کوچیک یا بزرگت رو مرور کن.',

                    'backgroundColor': Colors.white,
                  },
                ],
              ),
              SizedBox(height: 50),
              // کارد جدید زیر همه کارت‌ها
              _buildMeditationSection(
                isDesktop: isDesktop,
                isTablet: isTablet,
                isMobile: isMobile,
                screenWidth: screenWidth,
              ),

              SizedBox(height: isMobile ? 60 : 110),

              // بخش موبایل
              _buildMobileSection(
                isDesktop: isDesktop,
                isTablet: isTablet,
                isMobile: isMobile,
                screenWidth: screenWidth,
              ),

              // دکمه‌های دانلود
              _buildDownloadButtons(
                isDesktop: isDesktop,
                isTablet: isTablet,
                isMobile: isMobile,
                screenWidth: screenWidth,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCardRow({
    required bool isDesktop,
    required bool isTablet,
    required bool isMobile,
    required double screenWidth,
    required List<Map<String, dynamic>> cards,
  }) {
    final horizontalPadding = isDesktop ? 120.0 : (isTablet ? 60.0 : 20.0);
    final verticalPadding = isDesktop ? 8.0 : 16.0;

    if (isMobile) {
      // در موبایل کارت‌ها به صورت عمودی نمایش داده می‌شوند
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          children:
              cards
                  .map(
                    (card) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: _buildCard(
                        image: card['image'],
                        title: card['title'],
                        subtitle: card['subtitle'],
                        description: card['description'],
                        backgroundColor: card['backgroundColor'],
                        isDesktop: isDesktop,
                        isTablet: isTablet,
                        isMobile: isMobile,
                        screenWidth: screenWidth,
                      ),
                    ),
                  )
                  .toList(),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              cards
                  .map(
                    (card) => _buildCard(
                      image: card['image'],
                      title: card['title'],
                      subtitle: card['subtitle'],
                      description: card['description'],
                      backgroundColor: card['backgroundColor'],
                      isDesktop: isDesktop,
                      isTablet: isTablet,
                      isMobile: isMobile,
                      screenWidth: screenWidth,
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String image,
    required String title,
    required String subtitle,
    required String description,
    required Color backgroundColor,
    required bool isDesktop,
    required bool isTablet,
    required bool isMobile,
    required double screenWidth,
  }) {
    double cardWidth;
    double imageWidth;
    double fontSize;
    double subtitleFontSize;

    if (isDesktop) {
      cardWidth = 384;
      imageWidth = 336;
      fontSize = 16;
      subtitleFontSize = 16;
    } else if (isTablet) {
      cardWidth = (screenWidth - 140) / 2;
      imageWidth = cardWidth - 48;
      fontSize = 15;
      subtitleFontSize = 15;
    } else {
      cardWidth = screenWidth - 40;
      imageWidth = cardWidth - 48;
      fontSize = 14;
      subtitleFontSize = 14;
    }

    return Container(
      width: cardWidth,
      constraints: BoxConstraints(minHeight: isMobile ? 350 : 416),
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
        border: Border.all(color: const Color(0xffF3F3F3), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: imageWidth,
              height: isMobile ? 100 : 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.vazirmatn(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: const Color(0xff1A1A1A),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: GoogleFonts.vazirmatn(
                fontSize: subtitleFontSize,
                fontWeight: FontWeight.w400,
                color: const Color(0xff1A1A1A),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(isMobile ? 16.0 : 24.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: isMobile ? 12 : 14,
                  height: 1.5,
                  fontFamily: 'IRANYekanX',
                  fontWeight: FontWeight.w500,
                ),
                maxLines: isMobile ? 4 : 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMeditationSection({
    required bool isDesktop,
    required bool isTablet,
    required bool isMobile,
    required double screenWidth,
  }) {
    final sectionHeight = isMobile ? 600.0 : 800.0;
    final containerTop = isMobile ? 100.0 : 160.0;
    final containerHeight = isMobile ? 450.0 : 532.0;
    final horizontalPadding = isDesktop ? 120.0 : (isTablet ? 60.0 : 20.0);

    return SizedBox(
      height: sectionHeight,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // تصویر پس‌زمینه
          SizedBox(height: 20),
          Image.asset(
            'assets/background.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // کانتینر سفید
          Positioned(
            top: containerTop,
            left: horizontalPadding,
            right: horizontalPadding,
            child: Container(
              height: containerHeight,
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
                    padding: EdgeInsets.all(isMobile ? 12.0 : 16.0),
                    child: Text(
                      'مدیتیشن چیست ؟',
                      style: GoogleFonts.vazirmatn(
                        fontSize: isMobile ? 20 : 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 12.0 : 16.0,
                    ),
                    child: Text(
                      'ناماسته چطور به ما کمک میکند ؟',
                      style: GoogleFonts.vazirmatn(
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Container(
                    color: Color(0xffE0E0E0),
                    height: isMobile ? 80 : 101,
                    margin: EdgeInsets.symmetric(vertical: isMobile ? 8 : 16),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 8.0 : 16.0,
                            ),
                            child: Text(
                              'مدیتیشن، یعنی تمرین آگاهی. یعنی برگردوندن ذهن به لحظه‌ی حال، فارغ از گذشته و آینده',
                              style: TextStyle(
                                fontSize: isMobile ? 12 : 16,
                                height: 1.5,
                                fontFamily: 'IRANYekanX',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          SizedBox(height: 12),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 8.0 : 16.0,
                            ),
                            child: Text(
                              'با تنفس، سکوت و تمرکز، به ذهنمون یاد می‌دیم که آرام‌تر و متعادل‌تر باشه.',
                              style: TextStyle(
                                fontSize: isMobile ? 12 : 14,
                                height: 1.5,
                                fontFamily: 'IRANYekanX',
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/testing.png',
                          width: isMobile ? screenWidth * 0.7 : 384,
                          height: isMobile ? 180 : 247,
                          fit: BoxFit.contain,
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
    );
  }

  Widget _buildMobileSection({
    required bool isDesktop,
    required bool isTablet,
    required bool isMobile,
    required double screenWidth,
  }) {
    final sectionHeight = isMobile ? 250.0 : 210.0;
    final mobileImageHeight = isMobile ? 180.0 : 280.0;

    return SizedBox(
      height: sectionHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/images.png',
            width: double.infinity,
            height: sectionHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: mobileImageHeight,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/mobile.png',
                fit: BoxFit.contain,
                height: mobileImageHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadButtons({
    required bool isDesktop,
    required bool isTablet,
    required bool isMobile,
    required double screenWidth,
  }) {
    final buttonWidth = isMobile ? screenWidth * 0.9 : 486.0;
    final buttonHeight = isMobile ? 44.0 : 48.0;
    final fontSize = isMobile ? 14.0 : 16.0;
    final iconSize = isMobile ? 20.0 : 24.0;

    return Column(
      children: [
        SizedBox(height: 48),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(buttonWidth, buttonHeight),
            backgroundColor: const Color(0xff1B1B1C),
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 24,
              vertical: isMobile ? 12 : 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          icon: Icon(Icons.android, size: iconSize, color: Colors.white),
          label: Text(
            'دانلود وب اپلیکیشن برای اندروید',
            style: GoogleFonts.vazirmatn(
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 37),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(buttonWidth, buttonHeight),
            backgroundColor: const Color(0xff1B1B1C),
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 24,
              vertical: isMobile ? 12 : 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          icon: Icon(Icons.phone_iphone, size: iconSize, color: Colors.white),
          label: Text(
            'دانلود وب اپلیکیشن برای آیفون',
            style: GoogleFonts.vazirmatn(
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: isMobile ? 20 : 40),
      ],
    );
  }
}
