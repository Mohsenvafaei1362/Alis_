import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductsRepository {
  var url = "https://fakestoreapi.com/products";

  LoadProductsFromApi() async {
    var response = await http.get(
      Uri.parse(url),
    );
    return jsonDecode(response.body);
  }
}
