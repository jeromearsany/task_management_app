import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../widgets/custom_button.dart';
import '../routes/app_routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://ouch-cdn2.icons8.com/AosWlE_H-p3-7Z8v6z-UoQh8i5n_r6y6p7z7x8c9.png'), 
                  fit: BoxFit.contain,
                )
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Manage your\nDaily Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: AppColors.titleColor,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Team align and help to keep project on track",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16, 
                color: AppColors.subtitleColor,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: "Get Started",
              onPressed: () {
                // REAL ROUTE NAVIGATION:
                Navigator.pushNamed(context, AppRoutes.home);
              },
            ),
          ],
        ),
      ),
    );
  }
}