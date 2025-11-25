import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../widgets/task_card.dart';
import '../models/task_model.dart';
import '../routes/app_routes.dart';
import 'task_details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // USING THE REAL MODEL:
    final List<Task> myTasks = [
      Task(title: "Mobile App Design", deadline: "Due: 10:00 AM"),
      Task(title: "Figma Integration", deadline: "Due: 02:00 PM"),
      Task(title: "Team Meeting", deadline: "Due: 04:30 PM"),
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.grid_view, color: Colors.black),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Sidebar Menu opened!")),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.profile);
              },
              child: const CircleAvatar(
                backgroundColor: AppColors.taskCardColor,
                child: Icon(Icons.person, color: AppColors.primaryColor),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Student",
              style: TextStyle(fontSize: 16, color: AppColors.subtitleColor),
            ),
            const SizedBox(height: 5),
            const Text(
              "Complete your tasks",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.titleColor),
            ),
            const SizedBox(height: 30),
            const Text(
              "Daily Tasks",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // GENERATING LIST FROM MODEL:
            Expanded(
              child: ListView.builder(
                itemCount: myTasks.length,
                itemBuilder: (context, index) {
                  return TaskCard(
                    title: myTasks[index].title,
                    time: myTasks[index].deadline,
                    onTap: () {
                      // Manually pushing details because it requires arguments
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskDetailsView(taskName: myTasks[index].title),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}