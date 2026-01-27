
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../medicine_details.dart';

class SearchResultsCard extends StatelessWidget {
  const SearchResultsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>MedicineDetails());
      },
      child: Container(
        padding: EdgeInsets.all(6.sp),
        margin: EdgeInsets.all(1.sp),
        height: 100.h,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 9,

              children: [
                Row(
                  spacing: 9.sp,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("HealthPlus Pharmacy", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.watch_rounded, color: Colors.green, size: 10.sp),
                        Text('Available', style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold, color: Colors.green )),
                      ],
                    ),
                    Text('\$382', style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: Colors.blue ))

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.red, size: 10.sp),
                        Text('0.62 KM away', style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold, color: Colors.green )),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 10.sp),
                        Text('4.5', style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold, color: Colors.green )),
                      ],
                    )
                  ],
                ),
                Text('Newwoek City,  Tz', style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold, color: Colors.green )),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8.sp,
                  children: [
                    OutlinedButton.icon(onPressed: (){}, label: Text('Call'), icon: Icon(Icons.call, color: Colors.black),),
                    OutlinedButton.icon(
                      icon: Icon(Icons.navigation, color: Colors.white,),
                      style:ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue)
                      )
                      ,onPressed: (){}, label: Text('Navigate', style: TextStyle(color: Colors.white)),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}
