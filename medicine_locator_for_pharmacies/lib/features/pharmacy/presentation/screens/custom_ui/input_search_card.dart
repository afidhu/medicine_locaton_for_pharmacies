
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputSearchCard extends StatelessWidget {
  const InputSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return               SliverPadding(
      padding: EdgeInsets.all(0.8.sp),
      sliver: SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 34.h,
          margin: EdgeInsets.all(5.sp),
          padding: EdgeInsets.all(1.sp),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
              border: BoxBorder.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                  style: BorderStyle.solid
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey.shade200,
                    offset: Offset(0, 10),
                    spreadRadius: 1
                )
              ]
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Medicines...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                )
            ),
          ),
        ),
      ),
    );
  }
}
