import 'package:flutter/material.dart';
import 'package:task2p2_w2/core/utils/app_colors.dart';
import 'package:task2p2_w2/core/utils/app_strings.dart';

List<Map<String, dynamic>> tasks = [
  {
    'title': 'Communication Systems Quiz',
    'time': '10:00 AM',
  },
  {
    'title': 'OS Report',
    'time': '11:00 AM',
  },
  {
    'title': 'Flutter Assignment',
    'time': '12:00 PM',
  },
  {
    'title': 'Meeting with Client',
    'time': '02:00 PM',
  },
  {
    'title': 'Dinner with Friends',
    'time': '08:00 PM',
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          title: const Text(AppStrings.appBarTitle),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
