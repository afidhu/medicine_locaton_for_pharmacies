
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCard extends StatelessWidget {

  final int containerHeight;
  // final int containerWidth;
  // final Color containerColor;
  const ContainerCard({super.key, required this.containerHeight});

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: double.infinity,
        height: containerHeight.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              // Colors.,
              Colors.teal,
            ],
          ),
        )
    );
  }
}
