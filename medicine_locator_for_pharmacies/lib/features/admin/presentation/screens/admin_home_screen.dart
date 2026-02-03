

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/container_card.dart';
import 'package:medicine_locator_for_pharmacies/core/screens/custom_ui/pharmacy_admin_top_parts.dart';
import 'package:medicine_locator_for_pharmacies/features/admin/presentation/widgets/actions_clips.dart';

import '../../../../core/screens/custom_ui/counts_cards.dart';
import '../../../pharmacy/presentation/screens/custom_ui/input_search_card.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  bool isSelected =false;
  bool isSelected2 =false;
  bool isSelected3 =false;
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
              SliverPadding(padding: EdgeInsets.all(0.8.sp),
                sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 9.sp,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rawChips(
                            ActionsClips(isSelected: isSelected, text: 'All', onPressedFunction: (){
                              setState(() {
                                isSelected2=false;
                                isSelected3=false;
                               isSelected=!isSelected;
                              });
                            }
                            )
                        ),

                        rawChips(
                            ActionsClips(isSelected:isSelected2, text: 'Pending', onPressedFunction: (){
                              setState(() {
                                isSelected=false;
                                isSelected3=false;
                                isSelected2=!isSelected2;
                              });
                            }
                            )
                        ),     rawChips(
                            ActionsClips(isSelected: isSelected3, text: 'Approved', onPressedFunction: (){
                              setState(() {
                                isSelected2=false;
                                isSelected=false;
                                isSelected3=!isSelected3;

                              });
                            }
                            )
                        ),

                      ],
                    )
                ),
              ),

              SliverPadding(padding: EdgeInsets.all(0.8.sp),
                sliver: SliverToBoxAdapter(
                    child:
                        Text('Pharmacy Requests (3)',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                ),
              ),

              SliverList(delegate: SliverChildBuilderDelegate((context,index){
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
                                child: Image.asset('assets/images/pharmacy.png'))
                          ),
                          title: Text('MediCare Plus Pharmacy'),
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
                            Icon(Icons.location_on),
                            Text('123 Main St, New York, NY 10001')

                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('123 Main St, New York, NY 10001')

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
                );
              },childCount: 3),)

              // SliverPadding(padding: EdgeInsets.all(0.8.sp),
              //   sliver: SliverToBoxAdapter(
              //       child:Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Colors.white,
              //           boxShadow: [
              //             BoxShadow(
              //               blurRadius: 1,
              //               color: Colors.grey.shade200,
              //               offset: Offset(0, 10),
              //               spreadRadius: 1
              //             )
              //           ]
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               ListTile(
              //                 horizontalTitleGap: 10,
              //
              //                 leading: CircleAvatar(
              //                   child: Icon(Icons.store),
              //                 ),
              //                 title: Text('MediCare Plus Pharmacy'),
              //                 subtitle: Text('Owner: Dr. John Smith'),
              //               ),
              //
              //               Row(
              //                 children: [
              //                   Icon(Icons.location_on),
              //                   Text('123 Main St, New York, NY 10001')
              //
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(Icons.location_on),
              //                   Text('123 Main St, New York, NY 10001')
              //
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(Icons.location_on),
              //                   Text('123 Main St, New York, NY 10001')
              //
              //                 ],
              //               ),
              //
              //               Divider(),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text('License Number:'),
              //                   Text('PHR-2024-001')
              //
              //                 ],
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text('Submitted:'),
              //                   Text('1/20/2024')
              //                 ],
              //               ),
              //
              //
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                  OutlinedButton.icon(
              //               style: ButtonStyle(
              //                 iconColor: WidgetStatePropertyAll(Colors.red),
              //                 foregroundColor: WidgetStatePropertyAll(Colors.red),
              //                 overlayColor: WidgetStatePropertyAll(Colors.pink[100])
              //               ),
              //                    onPressed: (){}, label: Text('Reject',style: TextStyle(color: Colors.red),), icon: Icon(Icons.cancel_outlined,color: Colors.red),),
              //
              //                  OutlinedButton.icon(onPressed: (){}, label: Text('Approve',style: TextStyle(color: Colors.white),),icon: Icon(Icons.verified_outlined, color: Colors.white,),
              //                    style: ButtonStyle(
              //                      backgroundColor: MaterialStatePropertyAll(Colors.green)
              //                    ),
              //                  ),
              //
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       )
              //   ),
              // ),


            ],
          ),
      ),
    );
  }
}
