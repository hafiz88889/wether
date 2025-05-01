import 'package:flutter/cupertino.dart';
import 'package:wether_app/feature/second_page/presentation/screen/second_page.dart';
import 'package:wether_app/feature/third_page/presentation/screen/third_page.dart';

import '../../feature/home_page/pregentation/screen/home_page.dart';

class RouteHelper{
  static String homePage="/";
  static String secontPage="second_page";
  static String thirdPage="ThirdPage";

  static Map<String,WidgetBuilder>getRoute(){
    return{
      RouteHelper.homePage:(context)=>HomePage(),
      RouteHelper.secontPage:(context)=>SecondPage(),
      RouteHelper.thirdPage:(context)=>ThirdPage(),
    };
  }
}