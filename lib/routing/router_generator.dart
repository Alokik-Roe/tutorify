import 'package:flutter/material.dart';
import 'package:tutorify/pages/desktop/home_page.dart';
import 'package:tutorify/pages/desktop/tutor_list_page.dart';
import 'package:tutorify/pages/desktop/tutor_profile_page.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeTutorList:
        return MaterialPageRoute(builder: (_) => TutorListPage());
        break;
      /*case routeTutorListProfile:
        return MaterialPageRoute(builder: (_) => TutorListProfile());
        break;*/
      // case routeTutorListSch:
    //       //   // return MaterialPageRoute(builder: (_) => TutorListSch());
    //       //   break;
      case routeTutorProfile:
        return MaterialPageRoute(builder: (_) => TutorProfilePage());
        break;
      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? name) {

    return MaterialPageRoute(builder: (context) =>   Scaffold(
      body: Center(
        child: Text('ROUTE\n\n$name\n\nNOT FOUND'),
      ),
    ),
    );
    //
    // return  Scaffold(
    //   body: Center(
    //     child: Text('ROUTE\n\n$name\n\nNOT FOUND'),
    //   ),
    // );
  }

}

