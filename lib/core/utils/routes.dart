import 'package:flutter/cupertino.dart';

import '../../feature/home_page/pregentation/screen/home_page.dart';

class RouteHelper{
  static String homePage="/";
  static String secontPage="second_page";

  static Map<String,WidgetBuilder>getRoute(){
    return{
      RouteHelper.homePage:(context)=>HomePage(),
    };
  }
}