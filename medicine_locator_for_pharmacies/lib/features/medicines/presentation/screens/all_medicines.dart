
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllMedicines extends StatelessWidget {
  const AllMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                padding: EdgeInsets.all(10),
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
                        return ListTile(
                          minLeadingWidth: 10.w,
                          h
                          leading: Container(
                            width: 100.w,
                            height: 100.h,
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                              ),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network('https://picsum.photos/250?image=$index',width: 100.w,height: 80.h,
                                fit: BoxFit.fitWidth,
                                loadingBuilder: (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator()
                                  );
                                }
                              ))),
                          title: Text('Medicine $index'),
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
