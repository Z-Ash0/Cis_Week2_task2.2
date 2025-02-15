import 'package:flutter/material.dart';
import 'package:task2p2_w2/core/utils/app_colors.dart';
import 'package:task2p2_w2/core/utils/app_text_styles.dart';
import 'package:task2p2_w2/feautures/homePage/presentation/widgets/delete_alert_widget.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({super.key, required this.task, required this.onRemove});
  final Map<String, dynamic> task;
  final VoidCallback onRemove;

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task['title'],
        style: AppTextStyles.fontSize24BoldRalewayWhite,
      ),
      subtitle: Text(
        widget.task['time'],
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
                return DeleteAlertWidget(onRemove: widget.onRemove);
              });
        },
      ),
    );
  }
}
