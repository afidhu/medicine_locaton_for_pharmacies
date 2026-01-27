import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnStackIcons extends StatelessWidget {
  const OnStackIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.red
      ),
      child: Stack(
        children: [
          Column(
            children: [

              SizedBox(
                height: 128.h,
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(29)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network('https://images.pexels.com/photos/159211/headache-pain-pills-medication-159211.jpeg?cs=srgb&dl=pexels-pixabay-159211.jpg&fm=jpg',fit: BoxFit.cover, ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
                  ),
                  focusColor: Colors.red,
                  onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
              Spacer(),
              IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
                  ),
                  onPressed: (){}, icon: Icon(Icons.share,color: Colors.black,)),
              IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
                  ),
                  onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.black,)),
            ],
          )
        ],
      ),
    );
  }
}
