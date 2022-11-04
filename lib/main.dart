import 'package:flutter/material.dart';
import 'package:tutorify/views/view.dart';
import 'package:get/get.dart';
import 'routing/router_generator.dart';
import 'routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'tutorify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      builder: (_, child) => DesktopView(child: child!),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
