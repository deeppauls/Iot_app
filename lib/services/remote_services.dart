import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iot_app/models/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return ProductFromJson(jsonString);
    } else {
      return null;
    }
  }
}