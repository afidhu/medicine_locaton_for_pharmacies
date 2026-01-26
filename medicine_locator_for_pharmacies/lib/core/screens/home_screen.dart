import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/medicines/presentation/screens/custom_ui/medicine_up_stack.dart';
import '../../features/medicines/presentation/screens/custom_ui/quick_find_now.dart';
import '../../features/medicines/presentation/screens/custom_ui/recents_medicines.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body:CustomScrollView(
          slivers: [
            MedicineUpStack(),

            SliverPadding(padding: EdgeInsets.all(0.8.sp),
              sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 9.sp,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.lock_clock),
                      Text('Recents Searches',style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),),
                    ],
                  )
              ),
            ),
            RecentsMedicines(),

            QuickFindNow()
          ],
        ),
      ),
    );
  }
}



