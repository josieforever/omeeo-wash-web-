import 'package:flutter/material.dart';
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';

class LandingPageFithLevel extends StatelessWidget {
  const LandingPageFithLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryPurple),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomText(
            text: 'omeeo wash',
            textColor: AppColors.white,
            textSize: 22,
            textWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          CustomText(
            text:
                'Professional mobile car wash and detailing services delivered to your location',
            textColor: const Color.fromARGB(150, 255, 255, 255),
            textSize: 21,
            textWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          CustomText(
            text: '© 2024 omeeo wash. All rights reserved.',
            textColor: const Color.fromARGB(80, 255, 255, 255),
            textSize: 20,
            textWeight: FontWeight.w500,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
