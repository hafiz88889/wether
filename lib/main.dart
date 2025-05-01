import 'package:flutter/material.dart';
import 'package:wether_app/core/utils/routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wether",
      initialRoute: "/",
      routes: RouteHelper.getRoute(),
    );
  }
}
