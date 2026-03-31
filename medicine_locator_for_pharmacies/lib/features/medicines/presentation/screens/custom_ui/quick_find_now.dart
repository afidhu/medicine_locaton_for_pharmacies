
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickFindNow extends StatelessWidget {
  const QuickFindNow({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(padding: EdgeInsets.all(0.8.sp),
      sliver: SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: 100.h,
            margin: EdgeInsets.all(2.sp),
            padding: EdgeInsets.all(6.sp),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 9.sp,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: ClipRRect(
                          child: Image.network('https://cdn-icons-png.flaticon.com/512/822/822143.png')),
                    ),
                    Text('Popular Medical',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                  ],
                ),
                Text('Find quickly help now'),
                OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)
                    )
                    ,
                    onPressed: (){}, child:Text('Find Now', style: TextStyle(color: Colors.white),))
              ],
            ),
          )
      ),
    );
  }
}
