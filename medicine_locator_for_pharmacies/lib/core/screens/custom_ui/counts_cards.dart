
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/medicines/presentation/cubit/medicines_cubit.dart';


class CountsCards extends StatelessWidget {
  final IconData icon;
  final int counts;
  final String text;

  final IconData icon2;
   final int counts2;
  final String text2;
  final int positionedTop;
  const CountsCards({super.key, required this.icon, required this.counts, required this.text, required this.icon2, required this.counts2, required this.text2, required this.positionedTop});

  @override
  Widget build(BuildContext context) {
    context.read<MedicinesCubit>().countAllPharmacy();
    context.read<MedicinesCubit>().countAllMedicines();
     int counts2 =0;
    return   Positioned(
      top: positionedTop.h,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child:    BlocBuilder<MedicinesCubit,MedicinesState>(builder: (context, state){
              if(state is MedicinesInitial){
                return CircularProgressIndicator();
              }

              else if(state is PharmacyTotal){
                counts2 =state.total_pharmacy;
                print('PharmacyTotal');
                return  Card(
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
                        Text(counts2.toString(),style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.h,),
                        Text(text)
                      ],
                    )
                );
              }

              return  Card(
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
                      Text(counts2.toString(),style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.h,),
                      Text(text)
                    ],
                  )
              );;

            }),
          ),
          SizedBox(
            width: 100.w,
            height: 100.h,
            child:      BlocBuilder<MedicinesCubit,MedicinesState>(builder: (context, state){
              if(state is MedicinesInitial){
                return CircularProgressIndicator();
              }

              else if(state is MedicinesTotal){
                return   Card(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green[100]
                          ),
                          child: Icon(icon2,size: 20.sp,),
                        ),
                        SizedBox(height: 10.h,),
                        Text(state.total_medicine.toString(),style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                        // Text(counts2:1,style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.h,),
                        Text(text2)
                      ],
                    )
                );
              }

              return SizedBox.shrink();

            }),
          ),





        ],
      ),
    );
  }
}
