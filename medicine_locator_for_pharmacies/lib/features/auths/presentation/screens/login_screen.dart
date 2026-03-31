
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../pharmacy/presentation/screens/pharmacist_home.dart';
import '../widgets/input_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  margin: EdgeInsets.all(10.r),
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    gradient:SweepGradient(colors: [Colors.green,Colors.blue])
                  ),
                  child:Icon(Icons.medication_liquid,size: 100.sp,color: Colors.white)
                ),
                Text('Pharmacist Login',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                SizedBox(height: 8.h),
                Text('Access your pharmacy dashboard',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),),
                SizedBox(height: 10.h),

                Container(
                  width: double.infinity,
                  height: 160.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.r,
                        color: Colors.grey,
                        offset: Offset(2,2)
                      )
                    ]
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10.r),
                    child: Form(
                        child: Column(
                          spacing: 1,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            inputText(Inputs(hintText: 'Enter password', helperText: 'enter Password', isPassword: true, keyboardType: TextInputType.visiblePassword, icon: Icons.password_outlined)),
                            inputText(Inputs(hintText: 'Enter Email', helperText: 'enter Email', keyboardType: TextInputType.emailAddress, icon: Icons.email_outlined)),

                            // TextFormField(
                            //    keyboardType: TextInputType.emailAddress,
                            //    decoration: InputDecoration(
                            //      border: OutlineInputBorder(
                            //        borderRadius: BorderRadius.circular(10.r),
                            //        // borderSide: BorderSide.none
                            //      ),
                            //        hintText: 'Enter Email',
                            //      helperText: 'Email',
                            //      hintStyle: TextStyle(
                            //        fontSize: 10.sp,
                            //        fontWeight: FontWeight.bold
                            //      )
                            //    ),
                            //
                            //  ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton.icon(onPressed: (){}, label:Text('Forget Password'))
                              ],
                            ),

                            Container(
                              height: 24.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                gradient: LinearGradient(colors: [
                                  Colors.green,
                                  Colors.blue
                                ])
                              ), child: OutlinedButton(onPressed: (){
                                Get.to(()=>PharmacistHome());
                            }, child: Text('Login')))
                          ],
                        ),
                    ),
                  ),
                ),
                TextButton.icon(onPressed: (){}, label: Text('Don\'t have an account? Register Pharmacy'))
              ],
            ),
          )
      ),
    );
  }

}


