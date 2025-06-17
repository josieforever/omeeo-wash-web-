import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:omeeoweb/widgets/colors.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';
import '../responsive.dart';

class LandingPageFourthLevel extends StatelessWidget {
  const LandingPageFourthLevel({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Container(
      color: AppColors.accentPurple,
      child: Column(
        children: [
          const SizedBox(height: 60),
          CustomText(
            text: 'Ready to Book with OMEEO wash?',
            textColor: AppColors.primaryPurple,
            textSize: isMobile ? 40 : 65,
            textWeight: FontWeight.w800,
            textAlign: TextAlign.center,
          ),

          CustomText(
            text:
                'Get in touch with us today to schedule your mobile car wash and detailing service',
            textColor: Colors.black54,
            textSize: isMobile ? 16 : 25,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: ContactCard()),
              Expanded(child: QuoteForm()),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Contact omeeo wash',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColors.primaryPurple,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Phone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryPurple,
              ),
            ),
            const SizedBox(height: 4),
            const Text('(+233) 557-112580 ', style: TextStyle(fontSize: 20)),
            const Text('(+233) 591-553347', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16),

            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryPurple,
              ),
            ),
            const SizedBox(height: 4),
            const Text('admin@omeeo.org', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16),

            Text(
              'Service Areas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryPurple,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'We serve the entire metropolitan area within a 25-mile radius. '
              'Call us to confirm service availability in your location.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),

            Text(
              'Business Hours',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryPurple,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Monday - Friday: 8:00 AM - 6:00 PM',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Saturday: 8:00 AM - 5:00 PM',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Sunday: 8:00 AM - 5:00 PM',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),

            HoverButton(
              text: CustomText(
                text: 'Call Now to Book',
                textColor: AppColors.white,
                textSize: isMobile ? 16 : 20,
                textWeight: FontWeight.w600,
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class QuoteForm extends StatefulWidget {
  const QuoteForm({super.key});

  @override
  State<QuoteForm> createState() => _QuoteFormState();
}

class _QuoteFormState extends State<QuoteForm> {
  // 👇 TextEditingControllers
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController vehicleMakeController = TextEditingController();
  final TextEditingController vehicleModelController = TextEditingController();
  final TextEditingController serviceRequestController =
      TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    vehicleMakeController.dispose();
    vehicleModelController.dispose();
    serviceRequestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CustomText(
              text: 'Request a Quote',
              textColor: AppColors.primaryPurple,
              textSize: isMobile ? 24 : 30,
              textWeight: FontWeight.w600,
            ),
            const SizedBox(height: 20),

            // First and Last Name
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: firstNameController,
                    decoration: _inputDecoration('First Name'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: lastNameController,
                    decoration: _inputDecoration('Last Name'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Phone
            TextField(
              controller: phoneController,
              decoration: _inputDecoration('Phone Number'),
            ),
            const SizedBox(height: 20),

            // Email
            TextField(
              controller: emailController,
              decoration: _inputDecoration('Email Address'),
            ),
            const SizedBox(height: 20),

            // Address
            TextField(
              controller: addressController,
              decoration: _inputDecoration('Address for Service'),
            ),
            const SizedBox(height: 20),

            // Vehicle Make and Model
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: vehicleMakeController,
                    decoration: _inputDecoration('Vehicle Make'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: vehicleModelController,
                    decoration: _inputDecoration('Vehicle Model'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Service Request
            TextField(
              controller: serviceRequestController,
              maxLines: 5,
              minLines: 3,
              decoration: _inputDecoration(
                'Service needed and any special requests...',
              ),
            ),
            const SizedBox(height: 20),

            // Submit Button
            !isLoading
                ? HoverButton(
                  text: CustomText(
                  text: 'Request Quote',
                  textColor: AppColors.white,
                  textSize: isMobile ? 16 : 20,
                  textWeight: FontWeight.w600,
                ),
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });

                    sendQuoteEmail(
                      context: context,
                      name:
                          '${firstNameController.text} ${lastNameController.text}',
                      title: 'Quote Request from ${firstNameController.text}',
                      email: emailController.text,
                      message: '''
Phone: ${phoneController.text}
Address: ${addressController.text}
Vehicle: ${vehicleMakeController.text} ${vehicleModelController.text}

Request:
${serviceRequestController.text}
''',
                    ).then(
                      (response) => {
                        setState(() {
                          isLoading = false;
                        }),
                      },
                    );
                  },
                )
                : HoverButtonLoading(
                  isLoading: true,
                  text: CustomText(text: ''),
                  onPressed: () {},
                ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(6),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryPurple, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
    );
  }
}

Future<int> sendQuoteEmail({
  required BuildContext context,
  required String name,
  required String title,
  required String email,
  required String message,
}) async {
  if (name.isEmpty || title.isEmpty || email.isEmpty || message.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: CustomText(
            text: 'Please complete the form.',
            textSize: Responsive.isMobile(context) ? 16 : 20,
            textColor: AppColors.white,
          ),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
    return 0;
  }

  const serviceId = 'service_92tnfmj';
  const templateId = 'template_m6dlfra';
  const userId = 'mzbO8imw5AEdw-AjG';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

  final response = await http.post(
    url,
    headers: {'origin': 'http://localhost', 'Content-Type': 'application/json'},
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'name': name,
        'title': title,
        'email': email,
        'message': message,
      },
    }),
  );

  if (response.statusCode == 200) {
    debugPrint('✅ Email sent successfully!');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(
          child: CustomText(
            text: 'Message sent successfully!',
            textSize: Responsive.isMobile(context) ? 16 : 20,
            textColor: AppColors.white,
          ),
        ),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ),
    );
    return response.statusCode;
  } else {
    debugPrint('❌ Failed to send email: ${response.body}');
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(
          child: CustomText(
            text: 'Failed to send message. Please try again.',
            textSize: Responsive.isMobile(context) ? 16 : 20,
            textColor: AppColors.white,
          ),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );

    return response.statusCode;
  }
}
