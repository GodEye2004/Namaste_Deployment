import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Color(0xFF0F172A),
        padding: EdgeInsets.symmetric(
          horizontal: _getHorizontalPadding(context),
          vertical: 40.0,
        ),
        child: Column(
          children: [
            // بخش اصلی فوتر - سه ستون
            _buildMainSection(context),

            SizedBox(height: 60),

            // بخش پایینی - لوگو، آیکون‌ها و دکمه‌ها
            _buildBottomSection(context),

            SizedBox(height: 30),

            // متن کپی رایت
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.copyright, color: Colors.white, size: 16),
                SizedBox(width: 8),
                Text(
                  'کلیه حقوق مربوط به پلتفرم آنترنیوی نامابسته می باشد.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) return 120.0;
    if (screenWidth > 768) return 60.0;
    return 20.0;
  }

  Widget _buildMainSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 768) {
      // حالت دسکتاپ - سه ستون در کنار هم
      return Row(
        // crossAxisAlignment: CrossAxisAlignment.start,/
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: AboutUsSection()),
          SizedBox(width: 40), // فاصله بین ستون‌ها
          Expanded(child: UsefulLinksSection()),
          SizedBox(width: 40), // فاصله بین ستون‌ها
          Expanded(child: MagazineSection()),
        ],
      );
    } else {
      // حالت موبایل - ستون‌ها زیر هم
      return Column(
        children: [
          AboutUsSection(),
          SizedBox(width: 40),
          UsefulLinksSection(),
          SizedBox(width: 40),
          MagazineSection(),
        ],
      );
    }
  }

  Widget _buildBottomSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 968) {
      // حالت دسکتاپ - همه در یک ردیف
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ButtonsWidget(context), SocialIconsWidget(), LogoWidget()],
      );
    } else if (screenWidth > 600) {
      // حالت تبلت - دو ردیف
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LogoWidget(), SocialIconsWidget()],
          ),
          SizedBox(height: 30),
          ButtonsWidget(context),
        ],
      );
    } else {
      // حالت موبایل - همه زیر هم
      return Column(
        children: [
          LogoWidget(),
          SizedBox(height: 30),
          SocialIconsWidget(),
          SizedBox(height: 30),
          ButtonsWidget(context),
        ],
      );
    }
  }

  Widget AboutUsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'درباره نامابسته',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(height: 24),
        Text(
          'توی دنیایی که پر از شلوغی، اضطراب، و سرعت شده، ما تصمیم گرفتیم به مکث کوچیک بسازیم...\n\nبه پلتفرم که توی پیدا کردن خودت باهات، احساسات و پیش‌کاری تعمیق مدیتیشن کنی، تمرکز پیدا و ریزا پیدا شدن.',
          style: TextStyle(color: Colors.white, fontSize: 14, height: 1.8),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }

  Widget UsefulLinksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'لینک های اصلی',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 24),
        _buildLinkItem('صفحه اصلی'),
        SizedBox(height: 16),
        _buildLinkItem('سرویس ها'),
        SizedBox(height: 16),
        _buildLinkItem('درباره ما'),
        SizedBox(height: 16),
        _buildLinkItem('تماس با ما'),
        SizedBox(height: 16),
        _buildLinkItem('مجله'),
      ],
    );
  }

  Widget MagazineSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مجله نامابسته',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 24),
        _buildLinkItem('صفحه اصلی'),
        SizedBox(height: 16),
        _buildLinkItem('سرویس ها'),
        SizedBox(height: 16),
        _buildLinkItem('درباره ما'),
        SizedBox(height: 16),
        _buildLinkItem('تماس با ما'),
        SizedBox(height: 16),
        _buildLinkItem('مجله'),
      ],
    );
  }

  Widget _buildLinkItem(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 14, height: 1.4),
    );
  }

  Widget LogoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'e.',
          style: TextStyle(
            color: Color(0xFF60A5FA), // آبی روشن
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              color: Color(0xFFFFD700), // طلایی
              size: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget SocialIconsWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSocialIcon(Icons.chat_bubble_outline),
        SizedBox(width: 12),
        _buildSocialIcon(Icons.camera_alt_outlined),
        SizedBox(width: 12),
        _buildSocialIcon(Icons.send),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: Colors.black, size: 24),
    );
  }

  Widget ButtonsWidget(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    if (isMobile) {
      // در موبایل دکمه‌ها زیر هم
      return Column(
        children: [
          _buildDownloadButton(
            icon: Icons.android,
            text: 'دانلود وب اپلیکیشن برای اندروید',
            onPressed: () {},
            isFullWidth: true,
          ),
          SizedBox(height: 12),
          _buildDownloadButton(
            icon: Icons.apple,
            text: 'دانلود وب اپلیکیشن برای آیفون',
            onPressed: () {},
            isFullWidth: true,
          ),
        ],
      );
    } else {
      // در تبلت و دسکتاپ کنار هم
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDownloadButton(
            icon: Icons.android,
            text: 'دانلود وب اپلیکیشن برای اندروید',
            onPressed: () {},
            isFullWidth: false,
          ),
          SizedBox(width: 16),
          _buildDownloadButton(
            icon: Icons.apple,
            text: 'دانلود وب اپلیکیشن برای آیفون',
            onPressed: () {},
            isFullWidth: false,
          ),
        ],
      );
    }
  }

  Widget _buildDownloadButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
    required bool isFullWidth,
  }) {
    return Container(
      width: isFullWidth ? double.infinity : 282,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 24),
            SizedBox(width: 12),
            Flexible(
              child: Text(
                text,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 8),
            // Icon(Icons.download, size: 20),
          ],
        ),
      ),
    );
  }
}
