
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ActionsClips {
  final bool isSelected;
  // final Color bgColor;
  final String text;
  final Function onPressedFunction;

  ActionsClips({required this.isSelected, required this.text, required this.onPressedFunction});

}
  @override
  Widget rawChips(ActionsClips actionsClip) {
    return SizedBox(
      // width: 100.w,
      height: 30.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RawChip(
          label: Text(actionsClip.text,style: TextStyle(color:actionsClip.isSelected? Colors.white: Colors.black ),),
          selectedColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.white,
          checkmarkColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          selectedShadowColor: Colors.red,
          isEnabled: true,
          selected: actionsClip.isSelected,
          showCheckmark: false,
          onPressed: (){
            actionsClip.onPressedFunction();
          },
        )
    )
    );
  }

