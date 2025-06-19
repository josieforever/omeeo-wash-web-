import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';
import '../responsive.dart';

class LandingPageSecondLevel extends StatelessWidget {
  final GlobalKey sectionKey2;
  const LandingPageSecondLevel({super.key, required this.sectionKey2});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Container(
      key: sectionKey2,
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomText(
            text: 'Our Services',
            textSize: isMobile ? 40 : 60,
            textColor: AppColors.primaryPurple,
            textWeight: FontWeight.w800,
          ),
          const SizedBox(height: 10),
          CustomText(
            text:
                'Choose from our comprehensive range of car care services, all performed at',
            textSize: isMobile ? 16 : 25,
            textColor: AppColors.textSecondary,
            textWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),

          CustomText(
            text: 'your location',
            textSize: isMobile ? 16 : 25,
            textColor: AppColors.textSecondary,
            textWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ServiceCard(
                isPremium: false,
                services: [
                  'Exterior hand wash',
                  'Wheel cleaning',
                  'Window cleaning',
                  'Tire shine',
                  'Quick dry',
                ],
                icon: Icon(
                  FontAwesomeIcons.carSide,
                  size: 30,
                  color: AppColors.primaryPurple,
                ),
                customText: CustomText(
                  text: 'Basic Wash',
                  textSize: isMobile ? 24 : 30,
                  textColor: AppColors.primaryPurple,
                  textWeight: FontWeight.w700,
                ),
                subtitle: 'We come to your home or office',
                iconColor: AppColors.primaryPurple,
              ),
              ServiceCard(
                isPremium: true,
                services: [
                  'Everything in Basic',
                  'Interior vacuuming',
                  'Dashboard cleaning',
                  'Leather conditioning',
                  'Air freshener',
                  'Floor mat cleaning',
                ],
                icon: Icon(
                  FontAwesomeIcons.handSparkles,
                  size: 30,
                  color: AppColors.primaryPurple,
                ),
                customText: CustomText(
                  text: 'Premium Detail',
                  textSize: isMobile ? 24 : 30,
                  textColor: AppColors.primaryPurple,
                  textWeight: FontWeight.w700,
                ),
                subtitle: 'Biodegradable products & water conservation',
                iconColor: AppColors.primaryPurple,
              ),
              ServiceCard(
                isPremium: false,
                services: [
                  'Everything in Premium',
                  'Interior vacuuming',
                  'Dashboard cleaning',
                  'Wax application',
                  'Engine bay cleaning',
                ],
                icon: Icon(
                  FontAwesomeIcons.solidStar,
                  size: 30,
                  color: AppColors.primaryPurple,
                ),
                customText: CustomText(
                  text: 'Full Service',
                  textSize: isMobile ? 24 : 30,
                  textColor: AppColors.primaryPurple,
                  textWeight: FontWeight.w700,
                ),

                subtitle: 'Trained technicians & premium equipment',
                iconColor: AppColors.primaryPurple,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              PrincipleCard(
                icon: Icon(
                  FontAwesomeIcons.droplet,
                  size: 50,
                  color: AppColors.primaryPurple,
                ),
                title: CustomText(
                  text: 'Water Conservation',
                  textColor: AppColors.black,
                  textSize: isMobile ? 18 : 21,
                  textWeight: FontWeight.bold,
                ),
                subTitle: CustomText(
                  text: 'Eco-friendly washing',
                  textColor: AppColors.textSecondary,
                  textSize: isMobile ? 14 : 18,
                  textWeight: FontWeight.normal,
                ),
              ),
              PrincipleCard(
                icon: Icon(
                  FontAwesomeIcons.shieldVirus,
                  size: 50,
                  color: AppColors.primaryPurple,
                ),
                title: CustomText(
                  text: 'Interior Protection',
                  textColor: AppColors.black,
                  textSize: isMobile ? 18 : 21,
                  textWeight: FontWeight.bold,
                ),
                subTitle: CustomText(
                  text: 'Advanced care methods',
                  textColor: AppColors.textSecondary,
                  textSize: isMobile ? 14 : 18,
                  textWeight: FontWeight.normal,
                ),
              ),
              PrincipleCard(
                icon: Icon(
                  FontAwesomeIcons.clock,
                  size: 50,
                  color: AppColors.primaryPurple,
                ),
                title: CustomText(
                  text: 'Quick Service',
                  textColor: AppColors.black,
                  textSize: isMobile ? 18 : 21,
                  textWeight: FontWeight.bold,
                ),
                subTitle: CustomText(
                  text: 'Efficient & thorough',
                  textColor: AppColors.textSecondary,
                  textSize: isMobile ? 14 : 18,
                  textWeight: FontWeight.normal,
                ),
              ),
              PrincipleCard(
                icon: Icon(
                  FontAwesomeIcons.carOn,
                  size: 50,
                  color: AppColors.primaryPurple,
                ),
                title: CustomText(
                  text: 'All Vehicle Types',
                  textColor: AppColors.black,
                  textSize: isMobile ? 18 : 21,
                  textWeight: FontWeight.bold,
                ),
                subTitle: CustomText(
                  text: 'Cars, trucks, SUVs',
                  textColor: AppColors.textSecondary,
                  textSize: isMobile ? 14 : 16,
                  textWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
