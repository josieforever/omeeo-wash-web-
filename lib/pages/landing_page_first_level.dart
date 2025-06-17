import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart'
    show CustomText, FeatureCard, RegularButton;

class LandingPageFirstLevel extends StatelessWidget {
  const LandingPageFirstLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 1000,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/HowOftenWashCar_Header.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Blur effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // blur intensity
            child: Container(
              height: 1007, // optional tint
            ),
          ),
        ),

        // White overlay with opacity
        Container(
          width: double.infinity,
          height: 1007,
          color: const Color.fromARGB(
            212,
            246,
            239,
            255,
          ), // adjust opacity here
        ),

        Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              // Logo
              SizedBox(
                width: 350, // adjust size as needed

                child: Image.asset(
                  'assets/images/omeeo_wash_logo_black_stripes.png', // fixed path
                  fit: BoxFit.contain,
                ),
              ),

              // Subtitle
              CustomText(
                text: 'Premium Mobile Car Care',
                textSize: 80,
                textColor: AppColors.primaryPurple,
                textWeight: FontWeight.w800,
              ),

              SizedBox(height: 20),

              // Description
              CustomText(
                text:
                    'Professional mobile car wash and detailing services. We bring the car',
                textAlign: TextAlign.center,
                textSize: 25,
                textColor: AppColors.textSecondary,
              ),
              CustomText(
                text:
                    'Wash to your location with eco-friendly products and premium care.',
                textAlign: TextAlign.center,
                textSize: 25,
                textColor: AppColors.textSecondary,
              ),

              SizedBox(height: 25),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RegularButton(
                    textWidget: CustomText(
                      text: 'Book Now',
                      textSize: 20,
                      textWeight: FontWeight.w600,
                      textColor: AppColors.background,
                    ),
                    onPressed: () {},
                    backgroundColor: AppColors.primaryPurple,
                    border: Border.all(color: AppColors.primaryPurple),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    borderRadius: 10,
                  ),
                  SizedBox(width: 20),
                  RegularButton(
                    textWidget: CustomText(
                      text: 'View Services',
                      textSize: 20,
                      textWeight: FontWeight.w600,
                      textColor: AppColors.primaryPurple,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.white,

                    border: Border.all(color: AppColors.primaryPurple),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    borderRadius: 10,
                  ),
                ],
              ),

              SizedBox(height: 40),

              // Feature Cards
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  FeatureCard(
                    icon: Icon(
                      FontAwesomeIcons.car,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: CustomText(
                      text: 'Mobile Service',
                      textColor: AppColors.black,
                      textSize: 30,
                      textWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'We come to your home or office',
                      textColor: AppColors.textSecondary,
                      textAlign: TextAlign.center,
                      textSize: 20,
                    ),
                    iconColor: AppColors.primaryPurple,
                  ),
                  FeatureCard(
                    icon: Icon(
                      FontAwesomeIcons.pagelines,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: CustomText(
                      text: 'Eco-Friendly',
                      textColor: AppColors.black,
                      textSize: 30,
                      textWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'Biodegradable products & water conservation',
                      textAlign: TextAlign.center,
                      textColor: AppColors.textSecondary,
                      textSize: 20,
                    ),
                    iconColor: AppColors.primaryPurple,
                  ),
                  FeatureCard(
                    icon: Icon(
                      FontAwesomeIcons.personRays,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: CustomText(
                      text: 'Professional',
                      textColor: AppColors.black,
                      textSize: 30,
                      textWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'Trained technicians & premium equipment',
                      textAlign: TextAlign.center,
                      textColor: AppColors.textSecondary,
                      textSize: 20,
                    ),
                    iconColor: AppColors.primaryPurple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
