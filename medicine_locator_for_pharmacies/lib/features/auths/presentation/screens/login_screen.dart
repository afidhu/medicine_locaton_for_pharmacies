
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
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
                  width: 230.w,
                  height: 200.h,
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
                         TextFormField(
                               obscureText: true,
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.r),
                                   // borderSide: BorderSide.none
                                 ),
                                 hintText: 'Enter Password',
                                 helperText: 'Password',
                                 hintStyle: TextStyle(
                                   fontSize: 10.sp,
                                   fontWeight: FontWeight.bold
                                 )
                               ),
                             ),

                            TextFormField(
                               keyboardType: TextInputType.emailAddress,
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.r),
                                   // borderSide: BorderSide.none
                                 ),
                                   hintText: 'Enter Email',
                                 helperText: 'Email',
                                 hintStyle: TextStyle(
                                   fontSize: 10.sp,
                                   fontWeight: FontWeight.bold
                                 )
                               ),

                             ),
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
                              ), child: OutlinedButton(onPressed: (){}, child: Text('Login')))
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
