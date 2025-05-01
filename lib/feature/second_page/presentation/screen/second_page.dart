import 'package:flutter/material.dart';
import 'package:wether_app/core/utils/Image.dart';
import 'package:wether_app/core/utils/routes.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}
final List<Map<String,dynamic>>item=[
  {"image":MyImage.sunsetImage,"text":"18°C","text2":"16:00"},
  {"image":MyImage.wetherImageOne,"text":"20°C","text2":"15:00"},
  {"image":MyImage.wetherImageOne,"text":"19°","text2":"20:00"},
  {"image":MyImage.wetherImageOne,"text":"25°C","text2":"21:00"},
];
class _SecondPageState extends State<SecondPage> {
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
            const SizedBox(height: 50,),
            Image(image: AssetImage(MyImage.wetherImageOne),height: 200,width: double.infinity,),
            Text("19°",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w700),),
            Text("Precipitations",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Max: 24° ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
                const SizedBox(width: 30,),
                Text("Min:18°",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
              ],
            ),
            const SizedBox(height: 30,),
            Image(image: AssetImage(MyImage.houseImage),),
            Container(
              //height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 15,left: 15,right: 15),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF2C5364), // Deep blue
                        Color(0xFF5F2C82), // Purple
                        Color(0xFFA4508B), // Violet pink
                      ]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Today",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text("July 21",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],),
                  Divider(color: Colors.white,),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 122,
                    child: ListView.builder(
                      itemExtent: 80,
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(item[index]["text"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
                          Image(image: AssetImage(item[index]["image"]),height: 50,width: 50,),
                          Text(item[index]["text2"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),)
                        ],
                      );
                    },),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,size: 35,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined,size: 35,color: Colors.white,)),
              IconButton(onPressed: (){
                Navigator.pushNamed(context, RouteHelper.thirdPage);
              }, icon: Icon(Icons.menu,size: 35,color: Colors.white,)),
            ],)
          ],
        ),
      ),
    );
  }
}
