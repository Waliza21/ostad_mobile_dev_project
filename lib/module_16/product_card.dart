import 'package:flutter/material.dart';
import 'package:ostad_mobile_dev_project/module_16/product_model.dart';

class ProductCard extends StatelessWidget {
  final Data product;
  final VoidCallback onDelete;

  const ProductCard({super.key, required this.product,required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: Image.network(
              (product.img != null &&
                      product.img.toString().startsWith('https'))
                  ? product.img.toString()
                  : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMj3RryquJkxNjLvvG8N5g2mrbkAWQ0F_zqL7ALIda6-zGCQXZ8kNM5sbE6zjBPn-h9Zo&usqp=CAU',
            ),
          ),
          Text(
            product.productName.toString(),
            style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Price: \$${product.unitPrice} | QTY:${product.qty}',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.orange),
              ),
              IconButton(
                onPressed: onDelete,
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
