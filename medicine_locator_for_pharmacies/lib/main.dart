import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medicine_locator_for_pharmacies/features/medicines/data/data_sources/remotes/medicine_data_sources.dart';
import 'package:medicine_locator_for_pharmacies/features/medicines/data/repo_impl/repo_medicines_impl.dart';
import 'package:medicine_locator_for_pharmacies/features/medicines/domain/use_cases/add_medicine_use_cases.dart';
import 'package:medicine_locator_for_pharmacies/features/medicines/domain/use_cases/get_medicine_use_cases.dart';
import 'package:medicine_locator_for_pharmacies/features/pharmacy/data/data_sources/remote_source/pharmacy_remote.dart';
import 'package:medicine_locator_for_pharmacies/features/pharmacy/data/repo_impl/pharmacy_repo_impl.dart';

import 'core/screens/home_bottom_nav.dart';
import 'core/screens/home_screen.dart';
import 'core/screens/splash_screen.dart';
import 'features/medicines/domain/repositories/repo_medicines.dart';
import 'features/medicines/presentation/bloc/medicines_bloc.dart';
import 'features/medicines/presentation/cubit/medicines_cubit.dart';
import 'features/pharmacy/domain/repositories/pharmacy_repos.dart';
import 'features/pharmacy/domain/use_cases/Get_pharmacy_case.dart';
import 'features/pharmacy/domain/use_cases/add_oharm_usecase.dart';
import 'features/pharmacy/presentation/bloc/pharmacy_bloc.dart';

void main() {
  runApp( MultiRepositoryProvider(providers: [
    RepositoryProvider<RepoMedicines>(create: (_)=>RepoMedicinesImpl(MedicineDataSources() ) ),
    RepositoryProvider<PharmacyRepos>(create: (_)=>PharmacyRepoImpl(PharmacyRemoteDataSource()) )
  ],

      child: MultiBlocProvider(providers: [
        BlocProvider<MedicinesBloc>(create: (context)=>MedicinesBloc(GetMedicineUseCases(context.read<RepoMedicines>()), AddMedicineUseCases(context.read<RepoMedicines>()) )),
        BlocProvider<PharmacyBloc>(create: (context)=>PharmacyBloc(AddPharmacyUseCase(context.read<PharmacyRepos>()), GetPharmacyCase(context.read<PharmacyRepos>()) )),

        BlocProvider(create: (_)=>MedicinesCubit())
      ],
          child: ScreenUtilInit(
            designSize: const Size(249, 419),
            child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                ),
                // home: HomeBottomNav()
                home: SplashScreen()
            ),
          )
      )
  ) );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(249, 419),
//       child: GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         ),
//         // home: HomeBottomNav()
//         home: SplashScreen()
//       ),
//     );
//   }
// }
