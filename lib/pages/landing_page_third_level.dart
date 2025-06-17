import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';
import '../responsive.dart';

class LandingPageThirdLevel extends StatelessWidget {
  const LandingPageThirdLevel({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Container(
      color: const Color.fromARGB(6, 62, 0, 161),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Row(
        children: [
          // Left Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Why Choose OMEEO wash?',
                  textColor: AppColors.primaryPurple,
                  textSize: isMobile ? 32 : 50,
                  textWeight: FontWeight.w800,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text:
                      'We revolutionize car care by bringing professional detailing services directly to your doorstep. No more waiting in line or driving to car washes - we handle everything while you focus on what matters most.',
                  textColor: AppColors.textSecondary,
                  textSize: isMobile ? 16 : 21,
                  textWeight: FontWeight.w500,
                ),
                const SizedBox(height: 30),

                // Feature 1
                _buildFeatureItem(
                  title: 'Time Saving',
                  description:
                      'We come to you - at home, office, or anywhere convenient. No travel time or waiting required.',
                ),

                const SizedBox(height: 20),

                // Feature 2
                _buildFeatureItem(
                  title: 'Eco Friendly',
                  description:
                      'We use biodegradable products and water-efficient techniques to protect the environment.',
                ),

                const SizedBox(height: 20),

                // Feature 3
                _buildFeatureItem(
                  title: 'Expert Care',
                  description:
                      'Trained technicians with premium equipment ensure your car receives the best care possible.',
                ),
              ],
            ),
          ),

          const SizedBox(width: 20),

          // Right Column: Image and Info Cards
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/Car_Dashboard_Cleaning.png',
                    height: 500,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // Top Right Info
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '100+',
                          textColor: AppColors.primaryPurple,
                          textSize: isMobile ? 28 : 35,
                          textWeight: FontWeight.w700,
                        ),
                        CustomText(
                          text: 'Happy Customers',
                          textColor: AppColors.textSecondary,
                          textSize: isMobile ? 14 : 18,
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom Left Info
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryPurple,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '5+',
                          textColor: AppColors.white,
                          textSize: isMobile ? 28 : 35,
                          textWeight: FontWeight.w700,
                        ),
                        CustomText(
                          text: 'Years Experience',
                          textColor: AppColors.white,
                          textSize: isMobile ? 14 : 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required String title,
    required String description,
  }) {
    final isMobile = Responsive.isMobile(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.accentPurple,
          radius: 20,
          child: Icon(
            FontAwesomeIcons.solidCircle,
            size: 15,
            color: AppColors.primaryPurple,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                textColor: AppColors.primaryPurple,
                textSize: isMobile ? 20 : 25,
                textWeight: FontWeight.w600,
              ),
              CustomText(
                text: description,
                textColor: AppColors.textSecondary,
                textSize: isMobile ? 14 : 18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
