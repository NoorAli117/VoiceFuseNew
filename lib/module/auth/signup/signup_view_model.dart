import 'package:get/get.dart';

import '../../../NetworkLayer/Api.dart';

class SignUpViewModel extends GetxController {
  var isLoading = true.obs;
  // var articleList = List<ExploreModel>().obs;
  static final Api _api = Api();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> signUp({
    required String fname,
    required String lname,
    required String email,
    required String password,
    required String contact,
    required String companyName,
  }) async {
    final Map<String, dynamic> body = {
      'fname': fname,
      'lname': lname,
      'email': email,
      'password': password,
      'contact': contact,
      'company_name': companyName,
    };

    try {
      final response = await _api.apiCall(
        '/api/auth/signup/',
        null, // No query parameters in this request
        body,
        RequestType.POST,
      );

      if (response != null) {
        // Handle different variants of NetworkResponse
        response.when(
          success: (data) {
            // Handle successful response
            print('Sign up successful');
            print(data); // Access response data if needed
          },
          successList: (data) {
            // Handle successful response with list data
            print('Sign up successful');
            print(data); // Access response data if needed
          },
          error: (message) {
            // Handle error response
            print('Sign up failed: $message');
          },
          loading: (message) {
            // Handle loading state
            print('Sign up is in progress: $message');
          },
        );
      } else {
        // Handle null response
        print('Null response received');
      }
    } catch (e) {
      // Handle network or other errors
      print('Error: $e');
    }
  }
}
