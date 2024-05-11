import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:voice_fuse/routes/app_routes.dart';
import 'routes/routes_name.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: ImmediatorViewRoute,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    );
  }
}
