import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:voice_fuse/module/auth/signin/signin_model.dart';
import 'package:voice_fuse/module/auth/signup/signup_model.dart';
import 'package:voice_fuse/utils/helper/app_helper.dart';

import '../../../NetworkLayer/Api.dart';
import '../../dashboard/home/home_view.dart';

class SignInViewModel extends GetxController {
  late TextEditingController fullNameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  var isLoading = true.obs;
  final basicInfor = SignInModel().obs;
  // var articleList = List<ExploreModel>().obs;
  static final Api _api = Api();

  // Add the method to save basic info
  void saveBasicInfo(SignInModel basicInfo) {
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

  Future<void> signIn({required SignInModel body}) async {
    try {
      final response = await _api.apiCall(
        '/api/auth/login/',
        null, // No query parameters in this request
        body.toJson(), // Convert SignUpModel to Map<String, dynamic> then to JSON
        RequestType.POST,
      );

      // Check the type of response and handle accordingly
      response?.when(
        success: (data) {
          // Extract token from the response data
          final token = data['token'] as String?;
          final payload = data['payload'] as Map<String, dynamic>?;
          if (token != null) {
            // Token is present, set it using AppHelper
            AppHelper.helper.setToken = token;
            AppHelper.helper.name =
                payload?['first_name'] + ' ' + payload?['last_name'];
            ;
            // Navigate to the HomeView
            print(token);
            print(AppHelper.helper.name);
            Get.to(const HomeView());
          } else {
            // Token is missing, handle the error
            print('Sign in failed: Token is missing in the response');
          }
        },
        successList: (data) {
          // Handle success with list data if needed
          print('Success list response: $data');
        },
        error: (message) {
          // Handle error
          print('Sign in failed: $message');
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
}
