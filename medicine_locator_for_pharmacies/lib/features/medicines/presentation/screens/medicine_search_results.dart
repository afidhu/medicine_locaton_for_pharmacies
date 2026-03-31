import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_ui/search_results_card.dart';


class MedicineSearchResults extends StatefulWidget {
  const MedicineSearchResults({super.key});

  @override
  State<MedicineSearchResults> createState() => _MedicineSearchResultsState();
}

class _MedicineSearchResultsState extends State<MedicineSearchResults> {

  var is__filterBtn_pressed = false;
  var is_pressed1 = false;
  var is_pressed2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            IconButton.outlined(onPressed: (){
              setState(() {
                is__filterBtn_pressed=!is__filterBtn_pressed;
              });
            }, icon:Icon(Icons.filter_alt_rounded, color: Colors.blue,))
          ],
          bottom:is__filterBtn_pressed? PreferredSize(
              preferredSize: Size(13, 32),
              child:  Row(
                children: [
                  OutlinedButton.icon(onPressed: (){
                    setState(() {
                      is_pressed1=!is_pressed1;
                    });
                  }, label: Text('Distance',style: TextStyle(color: Colors.black),),
                    style:   ButtonStyle( backgroundColor:is_pressed1 ? WidgetStatePropertyAll(Colors.blue): WidgetStatePropertyAll(Colors.white)),),
                  OutlinedButton.icon(onPressed: (){
                    setState(() {
                      is_pressed2=!is_pressed2;
                    });
                  }, label: Text('Price',style: TextStyle(color: Colors.black),),style:  ButtonStyle( backgroundColor:is_pressed2 ? WidgetStatePropertyAll(Colors.blue): WidgetStatePropertyAll(Colors.white)),),

                ],
              ),
          ):null,
        ),
      body:  SafeArea(
        child: Scrollbar(
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
        ),
      ),
    );
  }
}
