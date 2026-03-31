
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmacyDetailsCard extends StatelessWidget {
  const PharmacyDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('HealthPlus Pharmacy',style:TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellowAccent[700]),
              Text('4.8(245 reviews)'),
              Text('Open Now'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 10.sp,
                ),
                title: Text('123 Main Street, New York, NY 10001'),
                subtitle: Text(
                  ' 0.62 KM away',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.watch_rounded,
                  color: Colors.black,
                  size: 10.sp,
                ),
                title: Text('Mon-Sat: 8:00 AM - 10:00 PM'),
                subtitle: Text(
                  ' Sunday: 9:00 AM - 8:00 PM',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.blue,
                  size: 10.sp,
                ),
                title: Text('(212) 555-0123'),
                subtitle: Text(
                  ' 0.62 KM away',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 6.sp,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.blue,
                      ),
                    ),
                    label: Text('Call'),
                    icon: Icon(Icons.call, color: Colors.black),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Navigate',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.navigation,
                      color: Colors.white,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.green[600],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
