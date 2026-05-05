
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/counts_cards.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/pharmacy_admin_top_parts.dart';

import '../../../../core/screens/custom_ui/container_card.dart';
import '../../../medicines/presentation/screens/all_medicines.dart';
import '../bloc/pharmacy_bloc.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<PharmacyBloc>().add(GetPharmacyEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: CustomScrollView(
            slivers: [

              pharmacyAdminTopParts( PharmacyAdminTopPartsData(
                  text1: 'HealthPlus Pharmacy',
                  text2: 'Pharmacist Dashboard',
                  text3: 'Total Medicines',
                  text4: 'Available',
                  icon1: Icons.store,
                  icon2: Icons.local_hospital_outlined,
                  icon3: Icons.medical_information,
                  counts1: 342,
                  counts2: 333
              )),

              InputSearchCard(),

              SliverPadding(padding: EdgeInsets.all(3.8.sp),
                sliver: SliverToBoxAdapter(
                  child: Text('Medicine Inventory (5)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp ),),
                )
                ),

              SliverPadding(padding: EdgeInsets.all(3.8.sp),
                sliver: BlocConsumer<PharmacyBloc,PharmacyState>(
                    builder: (context, state){
                      if(state is PharmacyInitial){
                        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),));
                      }
                      if(state is PharmacyLoadedError){
                        return SliverToBoxAdapter(child: Text(state.errorMessage));
                      }
                
                      if(state is PharmacyLoaded){
                        var pharmacy = state.pharmacy;
                        return SliverList(delegate: SliverChildBuilderDelegate((context, index){
                          return PharmacyMedicinesCard();

                        },childCount:pharmacy.length ),
                        );
                      }
                      return SizedBox.shrink();
                    },
                    listener: (context,state){}
                ),
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
      onPressed: (){
        Get.to(()=>AllMedicines());
      },
      // splashColor: Colors.blue,
      // backgroundColor: Colors.blue,
          backgroundColor: Color(0x00000001),
      child: Icon(Icons.add,color: Colors.white,)
      ),
    );
  }
}
