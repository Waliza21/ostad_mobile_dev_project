import 'package:flutter/material.dart';
import 'package:ostad_mobile_dev_project/module_16/productController.dart';
import 'package:ostad_mobile_dev_project/module_16/product_card.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  Productcontroller productcontroller = Productcontroller();

  @override
  void initState() {
    super.initState();
    productcontroller.fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD'),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: productcontroller.products.length,
        itemBuilder: (context, index) {
          var product = productcontroller.products[index];
          return ProductCard(product: product);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
