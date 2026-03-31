import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'available_medicines.dart';
import 'custom_ui/on_stack_icons.dart';
import 'custom_ui/pharmacy_details.dart';
import 'map_view.dart';

class MedicineDetails extends StatefulWidget {
  const MedicineDetails({super.key});

  @override
  State<MedicineDetails> createState() => _MedicineDetailsState();
}

class _MedicineDetailsState extends State<MedicineDetails> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
        color: Colors.grey[100],
          child: Column(
            spacing: 5,
            children: [
              OnStackIcons(),
              SizedBox(
                  child: PharmacyDetailsCard()
              ),
        
              SizedBox(height: 10.h,),
        
              Row(
                children: [
                  Icon(Icons.medication_liquid,color: Colors.green[600],),
                  Text('Available Medicines')
                ],
              ),
              SizedBox(height: 10.h,),
        
              AvailableMedicines(),

              Container(
                margin: EdgeInsets.all(10.sp),
                padding: EdgeInsets.all(10.sp),
                height: 200.h,
                width: double.infinity,
                child: MapScreen(),

              )
            ],
          ),
        ),
      ),
    ),
      ),
      // appBar: AppBar(),

    );
  }

}
