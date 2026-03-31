

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/counts_cards.dart';

import '../../../../../core/screens/custom_ui/container_card.dart';
import '../../widgets/text_input_search.dart';
class MedicineUpStack extends StatelessWidget {



  const MedicineUpStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.all(0.8.sp),
      sliver:SliverToBoxAdapter(
          child:  SizedBox(
            height: 250.h,
            width: double.infinity,
            child: Stack(
              fit: StackFit.loose,
              children: [
                ContainerCard(containerHeight: 180,),
                Positioned(
                    top: 10.h,
                    left: 0,
                    right: 0,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 9.sp,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('MedLocate',style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 10.w,),
                            Text('Tz, Morogoro',style: TextStyle(letterSpacing: 1.3,fontSize: 10.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        )
                      ],
                    )
                ),

                Positioned(
                    top:70.h,
                    left: 0,
                    right: 0,
                    child:  TextInputSearch()
                ),

                CountsCards(icon: Icons.local_hospital_outlined, counts: 402, text: 'Pharmancies \n Available', icon2: Icons.medical_information, counts2: 2400, text2: 'Medicines \n Available',positionedTop: 130, )
              ],
            ),
          )

      ),
    );
  }
}
