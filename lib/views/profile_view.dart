import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../widgets/custom_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        // Back button to return to Home
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("My Profile", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Picture Placeholder
              const CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.taskCardColor,
                child: Icon(Icons.person, size: 60, color: AppColors.primaryColor),
              ),
              const SizedBox(height: 20),
              // Name
              const Text(
                "Student Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.titleColor),
              ),
              const Text(
                "student@university.edu",
                style: TextStyle(fontSize: 16, color: AppColors.subtitleColor),
              ),
              const SizedBox(height: 50),
              // Statistics Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.taskCardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("12", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("To Do"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Done"),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Logout Button (Just goes back to previous screen for this demo)
              CustomButton(
                text: "Log Out",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}