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
        body: const ToDoList(),
      ),
    );
  }
}
