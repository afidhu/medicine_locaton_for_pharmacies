

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/container_card.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/pharmacy_admin_top_parts.dart';

import '../../../../core/screens/custom_ui/counts_cards.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child:CustomScrollView(
            slivers: [
              pharmacyAdminTopParts( PharmacyAdminTopPartsData(
                  text1: 'HealthPlus Pharmacy',
                  text2: 'Pharmacist Dashboard',
                  text3: 'Total Medicines',
                  icon1: Icons.store,
                  icon2: Icons.local_hospital_outlined,
                  icon3: Icons.medical_information,
                  counts1: 342,
                  counts2: 333
              )),

              // InputSearchCard()
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

            ],
          ),
      ),
    );
  }
}
