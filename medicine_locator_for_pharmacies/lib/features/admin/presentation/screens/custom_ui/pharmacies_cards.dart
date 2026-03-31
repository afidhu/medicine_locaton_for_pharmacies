import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmaciesCards extends StatelessWidget {
  const PharmaciesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.sp),
      padding: EdgeInsets.all(6.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300,width: 1.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.grey.shade200,
                offset: Offset(0, 10),
                spreadRadius: 2
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 7,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              horizontalTitleGap: 10,
              leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10.r),
                      // child: Image.asset('assets/images/pharmacy.png'))
                      child:Icon(Icons.store_mall_directory_outlined,color: Colors.white,size: 30.sp)
                  )
              ),
              title: Text('MediCare Plus Pharmacy',style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Owner: Dr. John Smith'),
            ),

            Row(
              children: [
                Icon(Icons.location_on),
                Text('123 Main St, New York, NY 10001')

              ],
            ),
            Row(
              children: [
                Icon(Icons.call),
                Text('1(212) 555-0100')

              ],
            ),
            Row(
              children: [
                Icon(Icons.email_outlined),
                Text('contact@medicareplus.com')

              ],
            ),

            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('License Number:'),
                Text('PHR-2024-001')

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Submitted:'),
                Text('1/20/2024')
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  style: ButtonStyle(
                      iconColor: WidgetStatePropertyAll(Colors.red),
                      foregroundColor: WidgetStatePropertyAll(Colors.red),
                      overlayColor: WidgetStatePropertyAll(Colors.pink[100])
                  ),
                  onPressed: (){}, label: Text('Reject',style: TextStyle(color: Colors.red),), icon: Icon(Icons.cancel_outlined,color: Colors.red),),

                OutlinedButton.icon(onPressed: (){}, label: Text('Approve',style: TextStyle(color: Colors.white),),icon: Icon(Icons.verified_outlined, color: Colors.white,),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    ) ;
  }
}
