import 'package:flutter/material.dart';

class ServicesSectionMobile extends StatelessWidget {
  const ServicesSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {'title': 'خدمت اول', 'description': 'توضیح خدمت اول'},
      {'title': 'خدمت دوم', 'description': 'توضیح خدمت دوم'},
      {'title': 'خدمت سوم', 'description': 'توضیح خدمت سوم'},
      {'title': 'خدمت چهارم', 'description': 'توضیح خدمت چهارم'},
      {'title': 'خدمت پنجم', 'description': 'توضیح خدمت پنجم'},
      {'title': 'خدمت ششم', 'description': 'توضیح خدمت ششم'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 372,
          child: ListView.builder(
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              final isEven = index % 2 == 0;
              return Container(
                width: 252,
                margin: EdgeInsets.only(
                  right: index == 0 ? 16 : 8,
                  left: index == services.length - 1 ? 16 : 0,
                ),
                decoration: BoxDecoration(
                  color: isEven ? Colors.blue[100] : Colors.green[100],
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service['title']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        service['description']!,
                        style: const TextStyle(fontSize: 14),
                      ),
                      const Spacer(),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.arrow_forward_ios, size: 16),
                      ),
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
