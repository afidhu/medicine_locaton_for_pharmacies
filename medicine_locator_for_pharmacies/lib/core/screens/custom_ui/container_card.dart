
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: double.infinity,
        height: 180.h,
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
