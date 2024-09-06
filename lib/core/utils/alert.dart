import 'package:fintoo/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Alert {
  static showSnackBar(
      {required String title, String? description, Widget? icon}) {
    Get.snackbar(
      title,
      description ?? "",
      colorText: colorWhite,
      backgroundColor: colorBlue,
      icon: icon,
    );
  }

  static showErrorSnackBar(
      {required String title, String? description, Widget? icon}) {
    Get.snackbar(
      title,
      description ?? "",
      colorText: colorWhite,
      backgroundColor: colorSnackBarErrorBorder,
      icon: icon,
    );
  }
}
