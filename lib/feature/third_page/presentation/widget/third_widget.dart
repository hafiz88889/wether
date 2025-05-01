import 'package:flutter/material.dart';

import '../../../../core/utils/Image.dart';

class ThirdWidget extends StatelessWidget {
  final String text1;
  final String time;
  final String text3;
  const ThirdWidget({super.key,
  required this.text1,
  required this.time,
  required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white,width: 1,strokeAlign: 5),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(image: AssetImage(MyImage.sunsetImage)),
              const SizedBox(width: 10,),
              Text(text1,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
            ],
          ),
          const SizedBox(height: 8,),
          Text(time,style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w700),),
          const SizedBox(height: 8,),
          Text(text1,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}
