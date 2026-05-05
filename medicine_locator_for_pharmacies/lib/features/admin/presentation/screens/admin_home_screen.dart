

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/container_card.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/pharmacy_admin_top_parts.dart';
import 'package:medicine_locator_for_pharmacies/features/admin/presentation/screens/custom_ui/pharmacy_filter_status.dart';
import 'package:medicine_locator_for_pharmacies/features/admin/presentation/widgets/actions_clips.dart';

import '../../../../core/screens/custom_ui/counts_cards.dart';
import '../../../pharmacy/presentation/bloc/pharmacy_bloc.dart';
import '../../../pharmacy/presentation/screens/custom_ui/input_search_card.dart';
import 'custom_ui/pharmacies_cards.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
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
          child:CustomScrollView(
            slivers: [
              pharmacyAdminTopParts( PharmacyAdminTopPartsData(
                  text1: 'Admin Dashboard',
                  text2: 'Pharmacy Approvals',
                  text3: 'Pending',
                  text4: 'Approved',
                  icon1: Icons.verified_outlined,
                  icon2: Icons.local_hospital_outlined,
                  icon3: Icons.medical_information,
                  counts1: 13,
                  counts2: 252
              )),

              InputSearchCard(),
              PharmacyFilterStatus(),

              SliverPadding(padding: EdgeInsets.all(0.8.sp),
                sliver: SliverToBoxAdapter(
                    child:
                        Text('Pharmacy Requests (3)',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                ),
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
                          return PharmaciesCards(pharmacy: pharmacy[index],);

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
    );
  }
}
