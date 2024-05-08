import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_fuse/module/auth/immediator/immediator_view.dart';
import 'package:voice_fuse/module/auth/signup/after_sign-up.dart';
import 'package:voice_fuse/module/auth/signup/sign_up.dart';
import 'package:voice_fuse/module/dashboard/home/home_view.dart';
import 'routes_name.dart';

final appRoutes = [
  GetPage(name: ImmediatorRoute, page: () => const ImmediatorView()),
  GetPage(name: HomeRoute,page: () => const HomeView(),middlewares: [AuthMiddleWare()]),
  GetPage(name: SignupRoute,page: () => const SignUp(),middlewares: [AuthMiddleWare()]),
  GetPage(name: AfterSignUpRoute,page: () => const AfterSignUp(),middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: HomeRoute, page: () => HomeView(), middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: LoginRoute,
  //     page: () => const LoginView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: SignUpRoute,
  //     page: () => const SignUpView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: ForgetRoute,
  //     page: () => const ForgetView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: AllRoute,
  //     page: () => CompleteView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: ChangePasswordRoute,
  //     page: () => const ChangePasswordView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: EditProfileRoute,
  //     page: () => const EditProfileView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: ContactRoute,
  //     page: () => const ContactDetailView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: FindDoctorRoute,
  //     page: () => const FindDoctorView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: AppointRoute,
  //     page: () => const AppointView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: AboutRoute,
  //     page: () => const AboutView(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: HopitalDetailRoute,
  //     page: () => const HospitalDetailView(id: 1),
  //     middlewares: [AuthMiddleWare()]),
];

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return null;
  }
}
