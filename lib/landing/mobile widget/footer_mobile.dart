import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandableFooter extends StatefulWidget {
  const ExpandableFooter({super.key});

  @override
  State<ExpandableFooter> createState() => _ExpandableFooterState();
}

class _ExpandableFooterState extends State<ExpandableFooter> {
  final Map<String, bool> _expandedSections = {
    'about': false,
    'services': false,
    'links': false,
  };

  final Map<String, List<String>> footerData = {
    'about': ['خانه', 'سرویس ها', 'درباره ما', 'تماس با ما', 'مجله'],
    'services': ['لینک ۱', 'لینک ۲', 'لینک ۳', 'لینک ۴', 'لینک ۵'],
    'links': ['لینک ۱', 'لینک ۲', 'لینک ۳', 'لینک ۴', 'لینک ۵'],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF0F172A), // Dark blue-gray background
      child: Column(
        children: [
          // Social Media Icons
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFF6B7280), // Gray background for social icons
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(Icons.whatshot_sharp, () {}),
                SizedBox(width: 24),
                _buildSocialIcon(Icons.telegram, () {}),
                SizedBox(width: 24),
                _buildSocialIcon(Icons.camera_alt, () {}), // Instagram icon
              ],
            ),
          ),

          // Expandable Sections
          _buildExpandableSection(
            'about',
            'درباره نامناسبه',
            'نوی زیبایی که بر ازگاهوایی، انعطاف و سرعت شده ما تصمیم گرفتیم به شما کمک کنیم. بسازیم',
          ),

          _buildExpandableSection('services', 'درباره نامناسبه', null),

          _buildExpandableSection('links', 'درباره نامناسبه', null),

          // Download Buttons
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                _buildDownloadButton(
                  'دانلود وب اپلیکیشن برای اندروید',
                  Icons.android,
                  () {},
                ),
                SizedBox(height: 12),
                _buildDownloadButton(
                  'دانلود وب اپلیکیشن برای آیفون',
                  Icons.apple,
                  () {},
                ),
              ],
            ),
          ),

          // Copyright
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.copyright, color: Colors.white70, size: 16),
                SizedBox(width: 8),
                Text(
                  'کلیه حقوق محفوظ به پلتفرم نامناسبه می‌باشد.',
                  style: GoogleFonts.vazirmatn(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }

  Widget _buildExpandableSection(
    String key,
    String title,
    String? description,
  ) {
    final isExpanded = _expandedSections[key] ?? false;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _expandedSections[key] = !isExpanded;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 20,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: GoogleFonts.vazirmatn(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Description (for first section)
          if (description != null && isExpanded)
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Text(
                description,
                style: GoogleFonts.vazirmatn(
                  fontSize: 14,
                  color: Colors.white70,
                  height: 1.6,
                ),
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ),

          // Links
          if (isExpanded && footerData[key] != null)
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    footerData[key]!
                        .map(
                          (link) => Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: GestureDetector(
                              onTap: () {
                                // Handle link tap
                              },
                              child: Text(
                                link,
                                style: GoogleFonts.vazirmatn(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDownloadButton(String text, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: Colors.black87),
            SizedBox(width: 8),
            Text(
              text,
              style: GoogleFonts.vazirmatn(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
