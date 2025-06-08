import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Color(0xFF0F172A),
        padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: AboutUsSection()),
                Expanded(
                  child: SectionWidget('لینک‌های مفید', [
                    'صفحه اصلی',
                    'دوره‌ها',
                    'وبلاگ',
                    'تماس با ما',
                  ]),
                ),
                Expanded(
                  child: SectionWidget('محصولات', [
                    'سروس‌ها',
                    'دوره‌ها',
                    'وبلاگ',
                    'تماس با ما',
                  ]),
                ),
                // Expanded(
                //   child: SectionWidget('راهنمای ما', [
                //     'صفحه اصلی',
                //     'سروس‌ها',
                //     'دوره‌ها',
                //     'تماس با ما',
                //   ]),
                // ),
              ],
            ),
            SizedBox(height: 16),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                children: [
                  LogoWidget(),
                  Expanded(child: Container()),
                  SocialIconsWidget(context),
                  Expanded(child: Container()),
                  ButtonsWidget(),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              '© کپی رایت تمامی حقوق محفوظ است.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }

  Widget AboutUsSection() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'درباره ما',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'توجه: این یک سایت آموزشی است که بر اساس اصول و استانداردهای آموزشی طراحی شده است و هدف آن آموزش و بالا بردن سطح علمی کاربران است. در این سایت مطالب آموزشی، ویدئوهای آموزشی، آزمون‌های آنلاین و ... قرار داده شده است.',
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  Widget SectionWidget(String title, List<String> links) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          ...links
              .map(
                (link) => Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      link,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget LogoWidget() {
    return Column(
      children: [
        Text(
          'E.',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Icon(Icons.star, color: Color(0xFFD4AF37), size: 16),
          ),
        ),
      ],
    );
  }

  Widget SocialIconsWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.message, color: Colors.white),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.send, color: Colors.white),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.camera_alt, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget ButtonsWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.apple, color: Colors.black),
          label: Text(
            'دانلود اپلیکیشن برای آیفون',
            style: TextStyle(color: Colors.black),
            textDirection: TextDirection.rtl,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        ),
        SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.android, color: Colors.black),
          label: Text(
            'دانلود اپلیکیشن برای اندروید',
            style: TextStyle(color: Colors.black),
            textDirection: TextDirection.rtl,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        ),
      ],
    );
  }
}
