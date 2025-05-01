import 'package:flutter/material.dart';
import 'package:wether_app/feature/third_page/presentation/widget/third_widget.dart';

import '../../../../core/utils/Image.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>items=[
      {"image":MyImage.sunsetImage,"text":"18°C","text2":"Fri"},
      {"image":MyImage.wetherImageOne,"text":"20°C","text2":"Sat"},
      {"image":MyImage.wetherImageOne,"text":"19°","text2":"Sun"},
      {"image":MyImage.wetherImageOne,"text":"25°C","text2":"Mon"},
      {"image":MyImage.wetherImageOne,"text":"25°C","text2":"Tue"},
      {"image":MyImage.wetherImageOne,"text":"25°C","text2":"Wed"},
      {"image":MyImage.wetherImageOne,"text":"25°C","text2":"Thu"},
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
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
                Color(0xFFA4508B), //
              ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            Center(child: Text("North America",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),)),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Max: 24°",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
                const SizedBox(width: 30,),
                Text("Min:18°",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
              ],
            ),
            const SizedBox(height: 50,),
            Text("7-Days Forecasts",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w700),),
            const SizedBox(height: 15,),
            SizedBox(
              height: MediaQuery.of(context).size.height/5.5,
              child: ListView.builder(
                itemCount: items.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFA4508B), // Deep blue
                          Color(0xFF5F2C82), // Purple
                          Color(0xFF0Fffff),])
                  ),
                  child: Column(
                    children: [
                      Text(items[index]["text"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
                      const SizedBox(height: 10,),
                      Image(image: AssetImage(items[index]["image"]),height: 50,width: 50,),
                      const SizedBox(height: 10,),
                      Text(items[index]["text2"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),)
                    ],
                  ),
                );
              },
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xFFA4508B), // Deep blue
                      Color(0xFF5F2C82), // Purple
                      Color(0xFF0F2027),
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage(MyImage.locationIcon,),height: 25,width: 25,),
                      const SizedBox(width: 15,),
                      Text("AIR QUALITY",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w200),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Text("3-Low Health Risk",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 8,),
                  Container(
                    height: 7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFA4508B), // Deep blue
                            Color(0xFF5F2C82), // Purple
                            Color(0xFF0F2027),
                          ])
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("See More",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                      Image(image: AssetImage(MyImage.arrowRightIcon,),height: 25,width: 25,),

                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThirdWidget(text1: "SUNRISE", time: "5:28 AM", text3: "Sunset: 7:P25PM"),
                const SizedBox(width: 15,),
                ThirdWidget(text1: "SUNRISE", time: "5:28 AM", text3: "Sunset: 7:P25PM"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
