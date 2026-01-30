
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../medicine_details.dart';
import '../medicine_search_results.dart';

class RecentsMedicines extends StatelessWidget {
  const RecentsMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
      padding: EdgeInsets.all(0.8.sp),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return InkWell(
              onTap: (){
                Get.to(()=>MedicineSearchResults());
              },
              child: Container(
                margin: EdgeInsets.all(2.sp),
                padding: EdgeInsets.all(6.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: ListTile(
                  leading: CircleAvatar(
                      child:Image.network('https://cdn-icons-png.flaticon.com/512/822/822143.png')
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vitamin 4',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10.w,),
                      Text('2 hr Ago')
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
          childCount: 15,
        ),
      ),
    );
  }
}
