import 'package:dartz/dartz.dart';
import 'package:flutter_offline_cart_bloc/data_sources/remote_data_source.dart';
import 'package:flutter_offline_cart_bloc/models/product_model.dart';
import 'package:flutter_offline_cart_bloc/network/error_handler.dart';
import 'package:flutter_offline_cart_bloc/network/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}

class ProductRepositoryImpl implements ProductRepository {
  final RemoteDataSource _remoteDataSource;

  ProductRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      var result = await _remoteDataSource.getProducts();
      List<ProductModel> products = ProductModel.fromJsonArray(result);
      return Right(products);
    } catch (error) {
      return Left(ErrorHandler(error).getFailure());
    }
  }
}
