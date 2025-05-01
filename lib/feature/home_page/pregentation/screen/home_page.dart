import 'package:flutter/material.dart';
import 'package:wether_app/core/utils/Image.dart';
import 'package:wether_app/core/utils/routes.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0F2027), // Dark navy blue
                Color(0xFF2C5364), // Deep blue
                Color(0xFF5F2C82), // Purple
                Color(0xFFA4508B), // Violet pink
          ])
        ),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Image(image: AssetImage(MyImage.wetherImageOne),height: 350,width: double.infinity,),
            const SizedBox(height: 100,),
            Text("Weather",style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w700),),
            Text("ForeCast",style: TextStyle(fontSize: 60,color: Colors.amber,fontWeight: FontWeight.w200),),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RouteHelper.secontPage);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.amber
                ),
                child: Text("Get Start",style: TextStyle(color: Color(0xFFA4508B),fontWeight: FontWeight.w700,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
