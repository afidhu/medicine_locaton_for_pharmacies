import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Inputs{
  final String hintText;
  final String helperText;
  final bool isPassword;
  final TextInputType keyboardType;
  final IconData icon;

  Inputs({required this.hintText, required this.helperText,  this.isPassword =false, required this.keyboardType, required this.icon});

}

Widget inputText(Inputs inputs){
  return    Expanded(
    child: TextFormField(
      obscureText:inputs.isPassword,
      keyboardType: inputs.keyboardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            // borderSide: BorderSide.none
          ),
          hintText:inputs.hintText,
          helperText:inputs.helperText,
          prefixIcon: Icon(inputs.icon),
          hintStyle: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold
          )
      ),
    ),
  );
}