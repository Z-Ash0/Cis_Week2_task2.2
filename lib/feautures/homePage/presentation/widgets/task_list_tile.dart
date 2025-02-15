import 'package:flutter/material.dart';
import 'package:task2p2_w2/core/utils/app_colors.dart';
import 'package:task2p2_w2/core/utils/app_strings.dart';
import 'package:task2p2_w2/core/utils/app_text_styles.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({super.key, required this.tasksList, required this.index});
  final List<Map<String, dynamic>> tasksList;
  final int index;

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.tasksList[widget.index]['title'],
        style: AppTextStyles.fontSize24BoldRalewayWhite,
      ),
      subtitle: Text(
        widget.tasksList[widget.index]['time'],
        style: AppTextStyles.fontSize18RalewayWhite,
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.delete,
          color: AppColors.whiteColor,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: const LinearBorder(),
                  title: Text(
                    AppStrings.delete,
                    style: AppTextStyles.fontSize24BoldRalewayWhite
                        .copyWith(color: AppColors.blackColor),
                  ),
                  content: Text(
                    AppStrings.deleteTask,
                    style: AppTextStyles.fontSize18RalewayWhite
                        .copyWith(color: AppColors.greyColor),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        AppStrings.cancel,
                        style: AppTextStyles.fontSize18RalewayWhite
                            .copyWith(color: AppColors.blackColor),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          widget.tasksList.removeAt(widget.index);
                        });
                        Navigator.pop(context);
                      },
                      child: Text(
                        AppStrings.yes,
                        style: AppTextStyles.fontSize18RalewayWhite
                            .copyWith(color: AppColors.redColor),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
