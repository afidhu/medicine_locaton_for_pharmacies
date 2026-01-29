
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableMedicines extends StatefulWidget {
  const AvailableMedicines({super.key});

  @override
  State<AvailableMedicines> createState() => _AvailableMedicinesState();
}

class _AvailableMedicinesState extends State<AvailableMedicines> {
  @override
  Widget build(BuildContext context) {
    return     Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
      ),
      height: 200.h,
      width: double.infinity,
      child: ListView.builder(
          padding: EdgeInsets.all(10.sp),
          itemCount: 3,
          itemBuilder: (context,index){
            return ListTile(
              title: Text('Paracetamol 500mg'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Available',style: TextStyle(color: Colors.green),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,size: 18.sp,))
                ],
              ),
              trailing: Text('\$202'),
            );
          }),
    );
  }
}
