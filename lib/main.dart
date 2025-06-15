import 'package:flutter/material.dart';
import 'package:omeeoweb/widgets/cutsom_widgets.dart';

void main() => runApp(OmeeoWashApp());

class OmeeoWashApp extends StatelessWidget {
  const OmeeoWashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMEEO Wash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sans'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final Color primaryGreen = Color(0xFF00A651);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.eco, size: 40, color: primaryGreen),
              ),
              SizedBox(height: 24),

              // Title
              Text(
                'OMEEO wash',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),

              // Subtitle
              Text(
                'Premium Mobile Car Care',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16),

              // Description
              Text(
                'Professional mobile car wash and detailing services. We bring the car wash to your location with eco-friendly products and premium care.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),

              SizedBox(height: 24),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OmeeoButton(
                    label: "Book now",
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 20),
                  OmeeoButton(
                    label: "View Service",
                    onPressed: () {},
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                    isOutlined: true,
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
                    icon: Icons.directions_car,
                    title: 'Mobile Service',
                    subtitle: 'We come to your home or office',
                    iconColor: primaryGreen,
                  ),
                  FeatureCard(
                    icon: Icons.water_drop,
                    title: 'Eco-Friendly',
                    subtitle: 'Biodegradable products & water conservation',
                    iconColor: primaryGreen,
                  ),
                  FeatureCard(
                    icon: Icons.star,
                    title: 'Professional',
                    subtitle: 'Trained technicians & premium equipment',
                    iconColor: primaryGreen,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}









/* tel:0541542428 */