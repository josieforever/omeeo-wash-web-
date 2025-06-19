import 'package:flutter/material.dart';
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';
import '../responsive.dart';

class LandingPageFithLevel extends StatelessWidget {
  final GlobalKey sectionKey;
  const LandingPageFithLevel({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Container(
      key: sectionKey,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryPurple),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: isMobile ? 5 : 40),
          CustomText(
            text: 'omeeo wash',
            textColor: AppColors.white,
            textSize: isMobile ? 10 : 22,
            textWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isMobile ? 5 : 20),
          CustomText(
            text:
                'Professional mobile car wash and detailing services delivered to your location',
            textColor: const Color.fromARGB(150, 255, 255, 255),
            textSize: isMobile ? 16 : 21,
            textWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isMobile ? 5 : 20),
          CustomText(
            text: '© 2024 omeeo wash. All rights reserved.',
            textColor: const Color.fromARGB(80, 255, 255, 255),
            textSize: isMobile ? 14 : 20,
            textWeight: FontWeight.w500,
          ),
          SizedBox(height: isMobile ? 5 : 40),
        ],
      ),
    );
  }
}
