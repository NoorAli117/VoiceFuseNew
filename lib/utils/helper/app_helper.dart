

import 'package:get_storage/get_storage.dart';

class AppHelper {

  static final helper = AppHelper();


double getResponsiveTextSize(double screenWidth, {double baseSize = 20, double breakpoint = 700}) {
  return (screenWidth < breakpoint) ? baseSize * (screenWidth / breakpoint) : baseSize;
}
 
   String get getToken {
    final box = GetStorage();
    if (box.read("token") != null){
      return box.read("token");
    }
    return "";
  }
  set setToken(String token) {
     final box = GetStorage();
     box.write("token", token);
  }
  
   String get name {
    final box = GetStorage();
    if (box.read("name") != null){
      return box.read("name");
    }
    return "";
  }
  set name(String token) {
     final box = GetStorage();
     box.write("name", token);
  }
     String get lastname {
    final box = GetStorage();
    if (box.read("lastname") != null){
      return box.read("lastname");
    }
    return "";
  }
  set lastname(String token) {
     final box = GetStorage();
     box.write("lastname", token);
  }
   String get email {
    final box = GetStorage();
    if (box.read("email") != null){
      return box.read("email");
    }
    return "";
  }
  set email(String token) {
     final box = GetStorage();
     box.write("email", token);
  }
   String get image {
    final box = GetStorage();
    if (box.read("image") != null){
      return box.read("image");
    }
    return "";
  }
  set image(String token) {
     final box = GetStorage();
     box.write("image", token);
  }
   
   int get userId {
    final box = GetStorage();
    if (box.read("user_id") != null){
      return box.read("user_id");
    }
    return 0;
  }
  set userId(int userId) {
     final box = GetStorage();
     box.write("user_id", userId);
  }
 int get patientId {
    final box = GetStorage();
    if (box.read("patientId") != null){
      return box.read("patientId");
    }
    return 0;
  }
  set patientId(int patientId) {
     final box = GetStorage();
     box.write("patientId", patientId);
  }
}