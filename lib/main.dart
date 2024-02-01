import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:match_pro_md/routes/routes_name.dart';
import 'routes/app_routes.dart';
import 'utils/helper/app_helper.dart';
import 'utils/helper/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        initialRoute: AppHelper.helper.getToken != '' ? HomeRoute : ImmediatorRoute,
      // initialBinding: BindingsBuilder(() {
      //   Get.lazyPut(
      //       () => AppHelper.helper.getToken != ""
      //           ? FindDoctorViewController()
      //           : HomeViewModel(),
      //       fenix: true);
      // }),
      getPages: appRoutes,
    );
  }
}
