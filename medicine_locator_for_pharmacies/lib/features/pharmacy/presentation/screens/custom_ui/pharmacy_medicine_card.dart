
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmacyMedicinesCard extends StatelessWidget {
  const PharmacyMedicinesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(1.sp),
        margin: EdgeInsets.only(top: 7.sp,bottom: 1.sp,left: 5.sp,right: 5.sp ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey.shade200,
                  offset: Offset(0, 10),
                  spreadRadius: 1
              )
            ]
        ),
        child:ListTile(
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Paracetamol 500mg',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp ),),
              Spacer(),
              Text('Available'),
              Switch(value: false, onChanged: (val){},activeColor: Colors.green,activeTrackColor: Colors.green[111],inactiveTrackColor: Colors.red,inactiveThumbColor: Colors.white,)
            ],
          ),

          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pain Relief'),
                  CupertinoButton(onPressed: (){},color: Colors.grey[300],child: Icon(Icons.edit,color: Colors.blue,),padding: EdgeInsets.all(0),)
                ],
              ),
              Text('Price : \$500',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp ),)
            ],
          ),
        )
    );
  }
}
