

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/text_input.dart';
class StackUp extends StatefulWidget {
  const StackUp({super.key});

  @override
  State<StackUp> createState() => _StackUpState();
}

class _StackUpState extends State<StackUp> {
  @override
  Widget build(BuildContext context) {
    return  SliverPadding(padding: EdgeInsets.all(0.8.sp),
      sliver:SliverToBoxAdapter(
          child:  SizedBox(
            height: 250.h,
            width: double.infinity,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Container(
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          // Colors.,
                          Colors.teal,
                        ],
                      ),
                    )
                ),
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
                  child:  TextInput()
                ),
                Positioned(
                  top: 130.h,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 100.w,
                        height: 110.h,
                        child:    Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green[100]
                                  ),
                                  child: Icon(Icons.local_hospital_outlined,size: 20.sp,),
                                ),
                                SizedBox(height: 10.h,),
                                Text('390',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.h,),
                                Text('Pharmancies \n Available')
                              ],
                            )
                        ),
                      ),SizedBox(
                        width: 100.w,
                        height: 110.h,
                        child:    Card(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green[100]
                                  ),
                                  child: Icon(Icons.medical_information,size: 20.sp,),
                                ),
                                SizedBox(height: 10.h,),
                                Text('2.4K+',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.h,),
                                Text('Medicines \n Available')
                              ],
                            )
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )

      ),
    );
  }
}
