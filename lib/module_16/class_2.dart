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

  Future fetchData() async {
    await productcontroller.fetchProduct();
    setState(() {});
  }

  productDialog({
    String? id,
    String? name,
    String? img,
    int? qty,
    int? unitPrice,
    int? totalPrice,
    required bool isUpdate,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(isUpdate ? 'Update Product' : 'Add Product'),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Image'),
                ),
                SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(labelText: 'Product Quantity'),
                ),
                SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(labelText: 'Product Unit Price'),
                ),
                SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(labelText: 'Product Total Price'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Save')),
                  ],
                ),
              ],
            ),
          ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchData();
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
          return ProductCard(
            product: product,
            onDelete: () {
              productcontroller.deleteProduct(product.sId.toString()).then((
                value,
              ) async {
                if (value) {
                  await productcontroller.fetchProduct();
                  setState(() {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Product Deleted')));
                  });
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Something wrong')));
                }
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productDialog(isUpdate: false);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
