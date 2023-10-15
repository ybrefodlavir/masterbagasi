import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:masterbagasi/data/model/product_model.dart';
import 'package:masterbagasi/data/shared/shared_values.dart';

class ProductRepository {
  final Dio dio = Dio();

  // Fetch all products
  Future<List<ProductModel>> fetchAllProduct() async {
    try {
      final response = await dio.get(
        '$baseUrl/products',
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return List<ProductModel>.from(
          (response.data as List<dynamic>).map(
            (product) => ProductModel.fromJson(product),
          ),
        );
      }

      throw jsonDecode(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
