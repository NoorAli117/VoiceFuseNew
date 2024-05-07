import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'routes/app_routes.dart';
import 'routes/routes_name.dart';
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
      initialRoute: HomeRoute,
      // initialRoute: AppHelper.helper.getToken != '' ? HomeRoute : ImmediatorRoute,
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
