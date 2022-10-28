import 'package:flutter/material.dart';
import 'package:tutorify/views/desktop_view.dart';
import 'package:tutorify/views/mobile_view.dart';
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
      // home: View(),
      // scrollBehavior: WebScrollBehavior(),
      builder: (_,child)=> DesktopView(child: child!),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
/*

class View extends StatefulWidget{
  final child;

  const View({super.key, required this.child});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ViewState(child);
  }

}

class _ViewState extends State<View>{
  final child;

  _ViewState(this.child);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 715) {
            return DesktopView(child: child,);
          } else {
            return MobileView();
          }
        },
      ),
    );
  }


}
*/