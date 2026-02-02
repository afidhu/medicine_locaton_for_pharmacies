
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'container_card.dart';
import 'counts_cards.dart';


class PharmacyAdminTopPartsData{
  final String text1;
  final String text2;
  final String text3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final int counts1;
  final int counts2;

  PharmacyAdminTopPartsData({required this.text1, required this.text2, required this.text3, required this.icon1, required this.icon2, required this.icon3, required this.counts1, required this.counts2});


}


Widget pharmacyAdminTopParts(PharmacyAdminTopPartsData pharmacyAdminTopPartsData){

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

                    Text(pharmacyAdminTopPartsData.text1,style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(pharmacyAdminTopPartsData.icon1,color: Colors.white,),
                        SizedBox(width: 10.w,),
                        Text(pharmacyAdminTopPartsData.text2,style: TextStyle(letterSpacing: 1.3,fontSize: 10.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    )
                  ],
                )
            ),
            CountsCards(icon:pharmacyAdminTopPartsData.icon2, counts:pharmacyAdminTopPartsData.counts1 , text: pharmacyAdminTopPartsData.text3, icon2:pharmacyAdminTopPartsData.icon3, counts2: pharmacyAdminTopPartsData.counts2, text2: 'Available',positionedTop: 60,),
          ],
        ),
      )

  );
}