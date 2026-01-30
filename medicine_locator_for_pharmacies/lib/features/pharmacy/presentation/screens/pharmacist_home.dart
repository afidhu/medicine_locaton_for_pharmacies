
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/counts_cards.dart';

import '../../../../core/screens/custom_ui/container_card.dart';
import 'custom_ui/input_search_card.dart';
import 'custom_ui/pharmacy_medicine_card.dart';
import 'custom_ui/pharmacy_top_cards.dart';

class PharmacistHome extends StatefulWidget {
  const PharmacistHome({super.key});

  @override
  State<PharmacistHome> createState() => _PharmacistHomeState();
}

class _PharmacistHomeState extends State<PharmacistHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: CustomScrollView(
            slivers: [

              PharmacyTopCards(),

              InputSearchCard(),

              SliverPadding(padding: EdgeInsets.all(3.8.sp),
                sliver: SliverToBoxAdapter(
                  child: Text('Medicine Inventory (5)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp ),),
                )
                ),

              SliverList(delegate: SliverChildBuilderDelegate((context, index){
                return PharmacyMedicinesCard();
                
              },childCount: 10),
              )

            ],
            
          ),
      ),
      floatingActionButton: _containerButton()
    );
  }

  Widget _containerButton(){
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.green,
        ])
      ),
      child: FloatingActionButton(
      onPressed: (){},
      // splashColor: Colors.blue,
      // backgroundColor: Colors.blue,
          backgroundColor: Color(0x00000001),
      child: Icon(Icons.add,color: Colors.white,)
      ),
    );
  }
}
