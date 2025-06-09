import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/content_box.png'),
        const SizedBox(height: 139),
        // SizedBox(
        //   height: 400,
        //   child: Stack(
        //     children: [
        //       Image.asset('assets/frames.png', fit: BoxFit.cover),
        //       Positioned(
        //         bottom: 0,
        //         right: 0,
        //         left: 0,
        //         child: Image.asset(
        //           'assets/mobile _mockup.png',
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
