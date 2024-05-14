import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_fuse/module/auth/immediator/immediator_view.dart';
import 'package:voice_fuse/module/auth/signin/signin.dart';
import 'package:voice_fuse/module/auth/signup/after_sign-up.dart';
import 'package:voice_fuse/module/auth/signup/sign_up.dart';
import 'package:voice_fuse/module/dashboard/company/team_members.dart';
import 'package:voice_fuse/module/dashboard/dashboard.dart';
import 'package:voice_fuse/module/dashboard/home/home_view.dart';
import '../module/dashboard/company/company_info.dart';
import 'routes_name.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: ImmediatorViewRoute,
      page: () => const ImmediatorView(),
    ),
    GetPage(
      name: HomeRoute,
      page: () => const HomeView(),
    ),
    // GetPage(
    //   name: SignupRoute,
    //   page: () => const SignUp(),
    // ),
    // GetPage(
    //   name: AfterSignUpRoute,
    //   page: () => const AfterSignUp(),
    // ),
    GetPage(
      name: CompanyInfoRoute,
      page: () => const CompanyInfo(),
    ),
    GetPage(
      name: InviteTeamRoute,
      page: () => const InviteTeam(),
    ),
    GetPage(
      name: DashboardRoute,
      page: () => const Dashboard(),
    ),

    GetPage(
      name: SigninRoute,
      page: () => const Signin(),
    ),
  ];
}

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return null;
  }
}
