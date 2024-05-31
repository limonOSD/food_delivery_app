import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/ui/screen/auth/signin_screen.dart';
import 'package:food_delivery_app/presentation/ui/utility/app_theme.dart';
import 'package:get/get.dart';

class FoodFrenzy extends StatefulWidget {
  const FoodFrenzy({super.key});

  @override
  State<FoodFrenzy> createState() => _FoodFrenzyState();
}

class _FoodFrenzyState extends State<FoodFrenzy> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SignInScreen(),
      theme: AppThemeData.lightThemeData,
    );
  }
}
