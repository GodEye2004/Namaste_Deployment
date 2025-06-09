import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            // موبایل
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // دکمه منو
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff909097)),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.download),
                    onPressed: () {},
                  ),
                ),
                // لوگو
                Text(
                  "Namasteh",
                  style: GoogleFonts.vazirmatn(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    _showMobileMenu(context);
                  },
                ),
              ],
            );
          } else {
            // دسکتاپ
            return Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDownloadButton(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildMenuItems(),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 80,
                    child: Image.asset('assets/logo.JPG', fit: BoxFit.contain),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Menu',
      pageBuilder: (_, __, ___) => const SizedBox.shrink(),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curvedValue = Curves.easeInOut.transform(animation.value);
        return Transform.translate(
          offset: Offset(0, (1 - curvedValue) * -500),
          child: Opacity(
            opacity: animation.value,
            child: _buildMobileMenuContent(context),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 400),
    );
  }

  Widget _buildMobileMenuContent(BuildContext context) {
    const items = ['خانه', 'سرویس ها', 'درباره ما', 'تماس با ما', 'مجله'];
    return Align(
      alignment: Alignment.topCenter,
      child: Material(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          height: 432,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.download),
                    onPressed: () {},
                  ),
                  Text(
                    "Namasteh",
                    style: GoogleFonts.vazirmatn(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // menu items
              ...['خانه', 'سرویس ها', 'درباره ما', 'تماس با ما', 'مجله'].map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    item,
                    style: GoogleFonts.vazirmatn(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1B1B1C),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1B1B1C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'دانلود وب اپلیکیشن',
                    style: GoogleFonts.vazirmatn(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadButton() {
    return Container(
      width: 200,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff909097)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'دانلود اپلیکیشن',
          style: GoogleFonts.vazirmatn(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xff1B1B1C),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenuItems() {
    const items = ['خانه', 'سرویس‌ها', 'درباره ما', 'تماس با ما', 'مجله'];
    return items
        .map(
          (item) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              item,
              style: GoogleFonts.vazirmatn(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1B1B1C),
              ),
            ),
          ),
        )
        .toList();
  }
}
