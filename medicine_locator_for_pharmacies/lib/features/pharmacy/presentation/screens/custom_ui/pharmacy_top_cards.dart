
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/screens/custom_ui/container_card.dart';
import '../../../../../core/screens/custom_ui/counts_cards.dart';

class PharmacyTopCards extends StatelessWidget {
  const PharmacyTopCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child:  SizedBox(
          height: 180.h,
          width: double.infinity,
          child: Stack(
            fit: StackFit.loose,
            children: [
              ContainerCard(containerHeight:110,),
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

                      Text('HealthPlus Pharmacy',style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.store,color: Colors.white,),
                          SizedBox(width: 10.w,),
                          Text('Pharmacist Dashboard',style: TextStyle(letterSpacing: 1.3,fontSize: 10.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      )
                    ],
                  )
              ),
              CountsCards(icon: Icons.local_hospital_outlined, counts: 242, text: 'Total Medicines', icon2: Icons.medical_information, counts2: 24, text2: 'Available',positionedTop: 60,),
            ],
          ),
        )

    );
  }
}
