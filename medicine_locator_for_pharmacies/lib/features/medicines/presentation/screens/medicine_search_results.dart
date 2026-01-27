import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_ui/search_results_card.dart';


class MedicineSearchResults extends StatefulWidget {
  const MedicineSearchResults({super.key});

  @override
  State<MedicineSearchResults> createState() => _MedicineSearchResultsState();
}

class _MedicineSearchResultsState extends State<MedicineSearchResults> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // elevation: 10.sp,
        // centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 40.h,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('vitamic  B3', style: TextStyle(color: Colors.black, fontSize: 21.sp),),
            Text('23 results found'),
          ],
        ),
        actions: [
          IconButton.outlined(onPressed: (){}, icon:Icon(Icons.filter_alt_rounded, color: Colors.blue,))
        ],
      ),
      body: Scrollbar(
        thickness: 10.sp,
        thumbVisibility: true,
        radius: Radius.circular(20),
        interactive: true,
        trackVisibility: true,
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (context, index){
          return  SearchResultsCard();
        }),
      )
    ));
  }
}
