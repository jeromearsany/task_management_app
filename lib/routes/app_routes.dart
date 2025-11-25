import 'package:flutter/material.dart';
import '../views/login_view.dart';
import '../views/home_view.dart';
import '../views/profile_view.dart';

class AppRoutes {
  // Define the Route Names
  static const String login = '/';
  static const String home = '/home';
  static const String profile = '/profile';

  // Define the Route Map (Used in main.dart)
  static Map<String, WidgetBuilder> define() {
    return {
      login: (context) => const LoginView(),
      home: (context) => const HomeView(),
      profile: (context) => const ProfileView(),
    };
  }
}