import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/Desktop widget/footer.dart';
import 'package:flutter_application_1/landing/Desktop widget/landingherosection.dart';
import 'package:flutter_application_1/landing/Desktop widget/card.dart';
import 'package:flutter_application_1/landing/Desktop widget/nav.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _LandingDesktopState();
}

class _LandingDesktopState extends State<LandingDesktop> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _footerKey = GlobalKey();

  bool _showShadow = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final footerBox =
        _footerKey.currentContext?.findRenderObject() as RenderBox?;

    if (footerBox != null && mounted) {
      final footerPosition = footerBox.localToGlobal(Offset.zero).dy;
      final screenHeight = MediaQuery.of(context).size.height;

      setState(() {
        _showShadow = footerPosition > screenHeight;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Navigation Bar
                  Nav(),

                  // Hero Section
                  Container(
                    constraints: BoxConstraints(maxHeight: screenHeight * 0.8),
                    child: LandingHeroSection(),
                  ),
                  const SizedBox(height: 20),

                  // Services Section
                  Column(
                    children: [
                      Text(
                        "خدمات ما",
                        style: GoogleFonts.vazirmatn(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff1B1B1C),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CardStyles(),
                      const SizedBox(height: 144),
                      FooterWidget(key: _footerKey), 
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: IgnorePointer(
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: _showShadow ? 1.0 : 0.0,
                  curve: Curves.easeOut,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x00ffffff),
                          Color(0x33ffffff),
                          Color(0x88ffffff),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
