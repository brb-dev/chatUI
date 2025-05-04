import 'package:chatui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../utils/widgets/custom_snackbar.dart';
import '../error/api_failure.dart';

class ErrorUtils {
  static void handleApiFailure(BuildContext context, ApiFailure failure) {
    final failureMessage = failure.failureMessage;
    toastification.showCustom(
      context: context,
      autoCloseDuration: const Duration(seconds: 5),
      builder: (context, holder) {
        return Material(
          child: CustomSnackbar(
            backgroundColor: const Color(0xFFFFD4FF),
            icon: Icon(Icons.error),
            messageText: failureMessage,
            textStyle: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: AppColor.errorRed),
          ),
        );
      },
      alignment: Alignment.topCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
