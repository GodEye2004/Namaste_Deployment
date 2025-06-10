import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesSectionMobile extends StatelessWidget {
  const ServicesSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {
        'title': 'مدیتیشن',
        'subtitle': 'فناوری شده با هوش مصنوعی',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/man.png',
      },
      {
        'title': 'آرامش',
        'subtitle': 'تکنیک‌های تنفس و آرامسازی',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/book.png',
      },
      {
        'title': 'خواب بهتر',
        'subtitle': 'برنامه‌ای برای خواب عمیق',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/man.png',
      },
      {
        'title': 'تمرکز',
        'subtitle': 'افزایش قدرت تمرکز',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/pen.png',
      },
      {
        'title': 'انگیزه',
        'subtitle': 'افزایش انرژی و انگیزه',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/man.png',
      },
      {
        'title': 'شادی',
        'subtitle': 'بهبود حالت روحی',
        'description':
            'با ترکیب علم مدرن و هوش مصنوعی، تجربه‌ای کاملاً شخصی از مدیتیشن بسازید. اپلیکیشن ما با تحلیل نیازهای احساسی شما، تمرین‌های مدیتیشنی را با صدای مورد علاقه شما پیشنهاد می‌دهد. اینجا جایی‌ست که تکنولوژی در خدمت ذهن‌آگاهی‌ست...آرام، هوشمند، و کاملاً مختص تو.',
        'imagePath': 'assets/note.png',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 372, // Fixed height as specified
          child: ListView.builder(
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              return Container(
                width: 252, // Fixed width as specified
                margin: EdgeInsets.only(
                  right: index == 0 ? 16 : 8,
                  left: index == services.length - 1 ? 16 : 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Hug content
                    children: [
                      // Image section
                      Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:
                            service['imagePath'] != null
                                ? Image.asset(
                                  service['imagePath']!,
                                  width: 207,
                                  height: 80,
                                  // fit: BoxFit.contain,
                                )
                                : Icon(
                                  Icons.spa,
                                  size: 30,
                                  color: Colors.grey.shade400,
                                ),
                      ),

                      // Title
                      Text(
                        service['title']!,
                        style: GoogleFonts.vazirmatn(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 6),

                      // Subtitle
                      Text(
                        service['subtitle']!,
                        style: GoogleFonts.vazirmatn(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 24),

                      // Description
                      Expanded(
                        child: Text(
                          service['description']!,
                          style: GoogleFonts.vazirmatn(
                            fontSize: 11,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),

                      SizedBox(height: 10),

                      // Arrow icon at bottom
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Container(
                      //     padding: EdgeInsets.all(6),
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey.shade100,
                      //       borderRadius: BorderRadius.circular(8),
                      //     ),
                      //     child: Icon(
                      //       Icons.arrow_forward_ios,
                      //       size: 14,
                      //       color: Colors.grey.shade600,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
