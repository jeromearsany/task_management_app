import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../widgets/custom_button.dart';

class TaskDetailsView extends StatelessWidget {
  final String taskName;
  const TaskDetailsView({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Task Details", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskName,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.titleColor),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.calendar_month, color: AppColors.primaryColor),
                const SizedBox(width: 10),
                const Text("Due Date: Nov 25, 2025", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Description",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              "This task needs to be completed by the end of the day. Please ensure that the Flutter widgets strictly follow the architecture diagram provided in the assignment.",
              style: TextStyle(color: AppColors.subtitleColor, height: 1.6, fontSize: 16),
            ),
            const Spacer(),
            CustomButton(
              text: "Mark Complete",
              onPressed: () {
                // FIX: Show a popup message first
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Success! $taskName marked as complete."),
                    backgroundColor: Colors.green,
                    duration: const Duration(seconds: 1),
                  ),
                );
                
                // Wait 1 second so the user sees the message, then go back
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}