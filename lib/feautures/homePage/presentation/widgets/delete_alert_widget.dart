import 'package:flutter/material.dart';
import 'package:task2p2_w2/core/utils/app_colors.dart';
import 'package:task2p2_w2/core/utils/app_strings.dart';
import 'package:task2p2_w2/core/utils/app_text_styles.dart';

class DeleteAlertWidget extends StatelessWidget {
  const DeleteAlertWidget({super.key, required this.onRemove});
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
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
            onRemove();
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
  }
}
