
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/counts_cards.dart';

import '../../../../core/screens/custom_ui/container_card.dart';

class PharmacistHome extends StatefulWidget {
  const PharmacistHome({super.key});

  @override
  State<PharmacistHome> createState() => _PharmacistHomeState();
}

class _PharmacistHomeState extends State<PharmacistHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [

              SliverToBoxAdapter(
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
                                    Icon(Icons.location_on),
                                    SizedBox(width: 10.w,),
                                    Text('Tz, Morogoro',style: TextStyle(letterSpacing: 1.3,fontSize: 10.sp, fontWeight: FontWeight.bold,color: Colors.white),),
                                  ],
                                )
                              ],
                            )
                        ),
                        CountsCards(icon: Icons.local_hospital_outlined, counts: 242, text: 'Total Medicines', icon2: Icons.medical_information, counts2: 24, text2: 'Available',positionedTop: 60,),
                      ],
                    ),
                  )

              ),
              
              SliverPadding(
                padding: EdgeInsets.all(0.8.sp),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    width: double.infinity,
                    height: 34.h,
                    margin: EdgeInsets.all(5.sp),
                    padding: EdgeInsets.all(1.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle,
                      border: BoxBorder.all(
                        color: Colors.grey.shade300,
                        width: 1.0,
                        style: BorderStyle.solid
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          spreadRadius: 1
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Medicines...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                ),
              ),
              
              SliverPadding(padding: EdgeInsets.all(3.8.sp),
                sliver: SliverToBoxAdapter(
                  child: Text('Medicine Inventory (5)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp ),),
                )
                ),

              SliverList(delegate: SliverChildBuilderDelegate((context, index){
                return Container(
                  child: Text('data'),
                );
                
              },childCount: 10),
              )

            ],
          ),
      ),
    );
  }

}
