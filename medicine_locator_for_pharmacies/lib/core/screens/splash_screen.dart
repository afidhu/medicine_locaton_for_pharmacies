
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/auths/presentation/screens/login_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                OutlinedButton(onPressed: (){Get.to(()=>HomeScreen());}, child: Text('Patient')),
                OutlinedButton(onPressed: (){Get.to(()=>LoginScreen());}, child: Text('Pharmacist')),
                OutlinedButton(onPressed: (){}, child: Text('Admin')),
              ],
            ),
          )
      ),
    );
  }
}
