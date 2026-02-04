
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicine_locator_for_pharmacies/features/admin/presentation/widgets/actions_clips.dart';

class PharmacyFilterStatus extends StatefulWidget {
  const PharmacyFilterStatus({super.key});

  @override
  State<PharmacyFilterStatus> createState() => _PharmacyFilterStatusState();
}

class _PharmacyFilterStatusState extends State<PharmacyFilterStatus> {
  bool isSelected =false;
  bool isSelected2 =false;
  bool isSelected3 =false;
  @override
  Widget build(BuildContext context) {
    return  SliverPadding(padding: EdgeInsets.all(0.8.sp),
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
    );
  }
}
