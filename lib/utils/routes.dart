import 'package:flutter/material.dart';
import 'package:router/home_screen.dart';
import 'package:router/screen_three.dart';
import 'package:router/screen_two.dart';
import 'package:router/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){

   switch(settings.name){
     case RouteName.homeScreen:
       return MaterialPageRoute(builder: (context) => HomeScreen());

     case RouteName.screenTwo:
       return MaterialPageRoute(builder: (context) => ScreenTwo(data: settings.arguments as Map,));

     case RouteName.screenThree:
       return MaterialPageRoute(builder: (context) => ScreenThree());
       default:
         return MaterialPageRoute(builder: (context){
           return const Scaffold(
             body: Center(child: Text('No Router Define'),),
           );
         });
   }
  }
}
