
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/admin/presentation/screens/admin_home_screen.dart';
import '../../features/auths/presentation/screens/login_screen.dart';
import '../../features/medicines/presentation/bloc/medicines_bloc.dart';
import '../../features/pharmacy/presentation/bloc/pharmacy_bloc.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    // context.read<MedicinesBloc>().add(GetMedicine());
    context.read<PharmacyBloc>().add(GetPharmacyEvent());
    return Scaffold(
      body: SafeArea(child:
          Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                Align(
                  alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.all(10.r),
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.green,
                          Colors.red,
                          Colors.blue
                        ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child: Text('Pharmacy System',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),))),
                SizedBox(height: 20.h,),

                OutlinedButton(
                  onPressed: (){Get.to(()=>HomeScreen());}, child: Text('Patient',style: TextStyle(color: Colors.white,fontSize: 20.sp)  ,),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    backgroundColor: Colors.blue
                  ),
                ),
                OutlinedButton(onPressed: (){Get.to(()=>LoginScreen());}, style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    backgroundColor: Colors.blue
                ), child: Text('Pharmacist',style: TextStyle(color: Colors.white,fontSize: 20.sp))),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue),
                      backgroundColor: Colors.purpleAccent
                  )
                ,
                    onPressed: (){Get.to(()=>AdminHomeScreen());}, child: Text('Admin',style: TextStyle(color: Colors.white,fontSize: 20.sp))),
              ],
            ),
          )
      ),
    );
  }
}
