

import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:flutter/material.dart';

enum ErrorType {
  success,
  error,
  information,
}

void showToast(String message, ErrorType errorType) {
  switch (errorType) {
    case ErrorType.success:
       MotionToast.success(
              title: const Text("Success"), description: Text(message))
          .show(Get.context!);
      break;
    case ErrorType.error:
      MotionToast.error(
              title: const Text("Error"), description: Text(message))
          .show(Get.context!);
      break;
    case ErrorType.information:
         MotionToast.info(
              title: const Text("Info"), description: Text(message))
          .show(Get.context!);
      break;
  }
}