import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/landing_desktop.dart'
    show LandingDesktop;
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 4328),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Namaste',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const LandingDesktop(),
        );
      },
    );
  }
}
