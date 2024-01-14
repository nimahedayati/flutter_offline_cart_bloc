import 'package:flutter/material.dart';
import 'package:flutter_offline_cart_bloc/resources/strings_manager.dart';
import 'package:flutter_offline_cart_bloc/screens/home_screen.dart';

class FlutterOfflineCartBloc extends StatelessWidget {
  const FlutterOfflineCartBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStringsManager.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
