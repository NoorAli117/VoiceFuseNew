

import 'package:intl/intl.dart';

extension StringValidation on String {
  String? validateEmail() {
    if (isEmpty) {
      return 'Email cannot be empty.';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(this)) {
      return 'Invalid email format.';
    }

    return null; // Return null if the email is valid
  }

  String? validatePassword() {
    if (isEmpty) {
      return 'Password cannot be empty.';
    }

    if (length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    return null; // Return null if the password is valid
  }

 String toDateFormat() {
    DateTime dateTime = DateTime.parse(this);
    final  formatter = DateFormat('dd MMM yyyy');
    return 'Date-${formatter.format(dateTime)}';
  }

}
