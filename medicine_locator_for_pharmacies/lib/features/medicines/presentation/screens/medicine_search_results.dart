import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MedicineSearchResults extends StatefulWidget {
  const MedicineSearchResults({super.key});

  @override
  State<MedicineSearchResults> createState() => _MedicineSearchResultsState();
}

class _MedicineSearchResultsState extends State<MedicineSearchResults> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // elevation: 10.sp,
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 40.h,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('vt A B3', style: TextStyle(color: Colors.black, fontSize: 21.sp),),
            Text('23 results found'),
          ],
        ),
        actions: [
          IconButton.outlined(onPressed: (){}, icon:Icon(Icons.filter_alt_rounded, color: Colors.blue,))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6.sp),
              margin: EdgeInsets.all(1.sp),
              height: 100.h,
              width: double.infinity,
              child: Card(
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
                          OutlinedButton.icon(onPressed: (){}, label: Text('Call')),
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
          ],
        ),
      )
    ));
  }
}
