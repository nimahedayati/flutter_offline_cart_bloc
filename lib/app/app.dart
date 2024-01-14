import 'package:flutter/material.dart';
import 'package:flutter_offline_cart_bloc/resources/colors_manager.dart';
import 'package:flutter_offline_cart_bloc/resources/strings_manager.dart';
import 'package:flutter_offline_cart_bloc/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterOfflineCartBloc extends StatelessWidget {
  const FlutterOfflineCartBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
