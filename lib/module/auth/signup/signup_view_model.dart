import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:voice_fuse/module/auth/signup/signup_model.dart';

import '../../../NetworkLayer/Api.dart';
import '../../dashboard/home/home_view.dart';

class SignUpViewModel extends GetxController {
  late TextEditingController fullNameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  var isLoading = true.obs;
  final basicInfor = SignUpModel().obs;
  // var articleList = List<ExploreModel>().obs;
  static final Api _api = Api();

  // Add the method to save basic info
  void saveBasicInfo(SignUpModel basicInfo) {
    basicInfor.value = basicInfo;
    print('Saving basic info: $basicInfo');
  }

  @override
  void onInit() {
    super.onInit();
    fullNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<void> signUp({required SignUpModel body}) async {
    try {
      final response = await _api.apiCall(
        '/api/auth/signup/',
        null, // No query parameters in this request
        body.toJson(), // Convert SignUpModel to Map<String, dynamic> then to JSON
        RequestType.POST,
      );

      // Check the type of response and handle accordingly
      response?.when(
        success: (data) {
          Get.to(const HomeView());
        },
        successList: (data) {
          // Handle success with list data if needed
          Get.to(const HomeView());
        },
        error: (message) {
          // Handle error
          print('Sign up failed: $message');
          // You might want to handle different error scenarios here
        },
        loading: (message) {
          // Handle loading state if needed
        },
      );
    } catch (e) {
      // Handle network or other errors
      print('Error: $e');
    }
  }

  Future<bool> checkAvailability({String? email, String? contact}) async {
    final body = email != null ? {'email': email} : {'contact': contact};
    try {
      final response = await _api.apiCall(
        '/api/auth/check_availability/',
        null,
        body,
        RequestType.POST,
      );

      // Check the type of response and handle accordingly
      return response?.when(
            success: (data) {
              if (email != null) {
                signUp(body: basicInfor.value);
                return true;
              }
            },
            successList: (data) {
              // Handle success with list data if needed
              if (email != null) {
                Get.to(const HomeView());
                return true;
              }
            },
            error: (message) {
              // Handle error
              print('Sign up failed: $message');
              // You might want to handle different error scenarios here
              return false;
            },
            loading: (message) {
              // Handle loading state if needed
              return false;
            },
          ) ??
          false; // Default to false if response is null
    } catch (e) {
      // Handle network or other errors
      print('Error: $e');
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    phoneController.dispose();
  }
}
