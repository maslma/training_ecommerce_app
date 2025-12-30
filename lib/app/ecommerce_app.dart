import 'package:ecommerce/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../core/routes/app_router.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        scaffoldBackgroundColor: AppColors.backGroundColor,
        primaryColor: AppColors.primaryColor,
      ),
      // home: MultiBlocProvider(
      //   providers: [BlocProvider(create: (_) => BottomNavBarCubit())],
      //   child: const BottomNavView(),
      // ),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
