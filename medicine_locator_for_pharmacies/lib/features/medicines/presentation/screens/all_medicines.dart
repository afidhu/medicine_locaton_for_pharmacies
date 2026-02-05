
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllMedicines extends StatefulWidget {
  const AllMedicines({super.key});

  @override
  State<AllMedicines> createState() => _AllMedicinesState();
}

class _AllMedicinesState extends State<AllMedicines> {
  var isSelected =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
            child: DraggableScrollableSheet(
                initialChildSize: 0.2.h,
                minChildSize: 0.2.h,
                maxChildSize: 1
                ,expand: true
                ,snapSizes: [0.5,1]
            ,
                builder: (BuildContext context, ScrollController scrollController){
              return Container(
                height: 300.h,
                width: double.infinity,
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle
                ),
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  const  SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(controller: scrollController,
                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.grey.shade300,
                                  offset: Offset(0, 10),
                                  spreadRadius: 1
                              )
                            ]
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            minVerticalPadding: 8,
                            contentPadding: EdgeInsets.all(10),
                            minLeadingWidth: 100.w,
                            horizontalTitleGap: 100.w,
                            minTileHeight: 100,
                            title: Container(
                              width: 100.w,
                              height: 100.h,
                                margin: EdgeInsets.only(top: 5,bottom: 5),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  color: Colors.white38
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://picsum.photos/250?image=$index',width: 100.w,height: 80.h,
                                        fit: BoxFit.cover,
                                        loadingBuilder: (context, child, loadingProgress) {
                                          if (loadingProgress == null) return child;
                                          return Center(
                                            child: CircularProgressIndicator()
                                          );
                                        }
                                      )
                                      ),
                                    ),
                                    Positioned(
                                        right: 5,
                                        child: RawChip(
                                          selectedColor: Colors.red,
                                            selected: isSelected,
                                            onSelected: (val){
                                              setState(() {
                                                isSelected=!isSelected;
                                              });
                                            print(val);
                                            },
                                            backgroundColor: Colors.white,
                                            label: Text('select')))
                                  ],
                                )),
                            // title: Text('Medicine $index'),
                            subtitle: ExpansionTile(title: Text('Medicine $index',style: TextStyle(fontWeight: FontWeight.bold),),
                              collapsedShape: ShapeBorder.lerp(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 0
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              dense: true,
                               children: [
                                 Text('Destcribunnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn'),
                               ],

                            ),
                          ),
                        );
                      })
                    ),
                  ],
                ),
              );
            }),
          )
      ),
    );
  }
}
