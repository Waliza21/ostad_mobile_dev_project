import 'dart:convert';

import 'package:ostad_mobile_dev_project/module_16/product_model.dart';
import 'package:ostad_mobile_dev_project/module_16/urls.dart';
import 'package:http/http.dart' as http;

class Productcontroller {
  List<Data> products = [];

  Future fetchProduct() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    }
  }
}
