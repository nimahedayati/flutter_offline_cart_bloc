import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline_cart_bloc/data_sources/remote_data_source.dart';
import 'package:flutter_offline_cart_bloc/models/product_model.dart';
import 'package:flutter_offline_cart_bloc/repositories/product_repository.dart';
import 'package:flutter_offline_cart_bloc/resources/strings_manager.dart';
import 'package:flutter_offline_cart_bloc/widgets/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Dio _dio = Dio();
  late final RemoteDataSource _remoteDataSource = RemoteDataSourceImpl(_dio);
  late final ProductRepository _productRepository = ProductRepositoryImpl(_remoteDataSource);

  List<ProductModel> _products = [];

  @override
  void initState() {
    super.initState();

    _getProducts();
  }

  _getProducts() async {
    var result = await _productRepository.getProducts();

    _products = result.fold((l) => [], (r) => r);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appName)),
      body: ListView.separated(
        padding: const EdgeInsets.all(24.0),
        separatorBuilder: (context, index) => const SizedBox(height: 16.0),
        itemBuilder: (context, index) => ProductItem(
          product: _products[index],
        ),
        itemCount: _products.length,
      ),
    );
  }
}
