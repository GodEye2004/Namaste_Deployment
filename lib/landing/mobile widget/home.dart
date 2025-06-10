import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'ناماسته ؛',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'اولین و تنها مرکز مدیتیشن ، ذهن آگاهی و\nتعامل کاربران ایرانی',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff1B1B1C),
              fontWeight: FontWeight.w400,
              fontFamily: 'IRANYekanX',
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/txtxs.png',
            fit: BoxFit.cover,
            width: 342,
            height: 70,
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 159,
                  height: 106,
                  decoration: BoxDecoration(
                    color: Color(0xffF0F4FD),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Icon(Icons.android),
                        const SizedBox(height: 10),
                        Text(
                          "دانلود وب اپلیکیشن\nبرای اندروید",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 159,
                  height: 106,
                  decoration: BoxDecoration(
                    color: Color(0xff0F172A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Icon(Icons.apple, color: Colors.white),
                        const SizedBox(height: 10),
                        Text(
                          "دانلود وب اپلیکیشن\nبرای آیفون",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 46),
          Image.asset('assets/mobileimg.png', fit: BoxFit.cover),
          const SizedBox(height: 64),
          Text(
            "خدمات",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'IRANYekanX',
              color: Color(0xff1B1B1C),
            ),
          ),
        ],
      ),
    );
  }
}
