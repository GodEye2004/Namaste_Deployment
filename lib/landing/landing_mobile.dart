import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/Desktop%20widget/nav.dart';
import 'package:flutter_application_1/landing/mobile%20widget/content.dart';
import 'package:flutter_application_1/landing/mobile%20widget/home.dart';
import 'package:flutter_application_1/landing/mobile%20widget/services_section_mobile.dart';

class LandingMobile extends StatefulWidget {
  const LandingMobile({super.key});

  @override
  State<LandingMobile> createState() => _LandingMobileState();
}

class _LandingMobileState extends State<LandingMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Nav(),
              const SizedBox(height: 30),
              const Home(),
              const SizedBox(height: 20),
              ServicesSectionMobile(),
              const SizedBox(height: 20),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}
