import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/landing/landing_desktop.dart';
import 'package:flutter_application_1/landing/landing_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 4328),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Namaste',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const ResponsiveLanding(),
        );
      },
    );
  }
}

class ResponsiveLanding extends StatelessWidget {
  const ResponsiveLanding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 768) {
      return const LandingMobile();
    } else {
      return const LandingDesktop();
    }
  }
}
