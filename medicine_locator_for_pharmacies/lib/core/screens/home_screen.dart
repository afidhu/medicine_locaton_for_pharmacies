import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_ui/stack_up.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body:CustomScrollView(
          slivers: [
            StackUp(),

            SliverPadding(padding: EdgeInsets.all(0.8.sp),
              sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 9.sp,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.lock_clock),
                      Text('Recents Searches',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                    ],
                  )
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.all(0.8.sp),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return InkWell(
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
                  childCount: 5,
                ),
              ),
            ),


            SliverPadding(padding: EdgeInsets.all(0.8.sp),
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
            ),

          ],
        ),
      ),
    );
  }
}



