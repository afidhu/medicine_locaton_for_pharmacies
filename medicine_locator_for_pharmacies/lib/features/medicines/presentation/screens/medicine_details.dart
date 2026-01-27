import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'custom_ui/on_stack_icons.dart';

class MedicineDetails extends StatefulWidget {
  const MedicineDetails({super.key});

  @override
  State<MedicineDetails> createState() => _MedicineDetailsState();
}

class _MedicineDetailsState extends State<MedicineDetails> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              children: [
                OnStackIcons(),
                SizedBox(
                  child: Card(
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
                  ),
                ),

                SizedBox(height: 10.h,),
                
                Row(
                  children: [
                    Icon(Icons.medication_liquid,color: Colors.green[600],),
                    Text('Available Medicines')
                  ],
                ),
                SizedBox(height: 10.h,),

                Text('Map View'),
          
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]
                  ),
                  height: 200.h,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 3,
                      itemBuilder: (context,index){
                    return ListTile(
                      title: Text('Paracetamol 500mg'),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Available',style: TextStyle(color: Colors.green),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,size: 18.sp,))
                        ],
                      ),
                      trailing: Text('\$202'),
                    );
                  }),
                ),


                SizedBox(
                  child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      // _controller.complete(controller);
                    },
                  ),
                  height: 200.h,
                  width: double.infinity,

                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
