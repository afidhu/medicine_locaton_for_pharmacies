
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../bloc/medicines_bloc.dart';
import '../medicine_details.dart';
import '../medicine_search_results.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';

class RecentsMedicines extends StatelessWidget {
  const RecentsMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MedicinesBloc>().add(GetMedicine());
    return  BlocBuilder<MedicinesBloc, MedicinesState>(
      builder: (context, state) {

        if (state is MedicinesLoading) {
          debugPrint("allMR :${state}");
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state is MedicinesError) {
          debugPrint("allME :${state.message}");
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }


        if (state is MedicinesLoaded) {
          debugPrint("allM :${state.medicines.length}");
          final medicines = state.medicines; // your list

          return SliverPadding(
            padding: EdgeInsets.all(0.8.sp),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final medicine = medicines[index];

                  return InkWell(
                    onTap: () {
                      Get.to(() => MedicineSearchResults());
                    },
                    child: Container(
                      margin: EdgeInsets.all(2.sp),
                      padding: EdgeInsets.all(6.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.network(medicine.imageUrl!),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              medicine.name!,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              timeago.format(DateTime.parse(medicine.createdAt!)),
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  );
                },
                childCount: medicines.length,
              ),
            ),
          );
        }

        if (state is MedicinesError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error loading data')),
          );
        }

        return SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }
}
