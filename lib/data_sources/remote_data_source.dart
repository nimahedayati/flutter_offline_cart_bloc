import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<dynamic> getProducts();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _dio;

  RemoteDataSourceImpl(this._dio);

  @override
  Future getProducts() async {
    var response = await _dio.get('https://fakestoreapi.com/products');
    return response.data;
  }
}
