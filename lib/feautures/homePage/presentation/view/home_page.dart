import 'package:flutter/material.dart';
import 'package:task2p2_w2/core/utils/app_colors.dart';
import 'package:task2p2_w2/core/utils/app_strings.dart';
import 'package:task2p2_w2/core/utils/app_text_styles.dart';
import 'package:task2p2_w2/feautures/homePage/presentation/widgets/to_do_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          title: Text(
            AppStrings.appBarTitle,
            style:
                AppTextStyles.fontSize24BoldRalewayWhite.copyWith(fontSize: 32),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: ToDoList(list: tasks),
      ),
    );
  }
}
