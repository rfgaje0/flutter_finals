import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(product.image, height: 200),
            SizedBox(height: 10),
            Text(product.description),
            Text('\$${product.price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {
                final index = cartItems.indexWhere((item) => item.name == product.name);
                if (index >= 0) {
                  cartItems[index].quantity++;
                } else {
                  cartItems.add(Product(
                    name: product.name,
                    description: product.description,
                    image: product.image,
                    price: product.price,
                    quantity: 1,
                  ));
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added to Cart")));
              },
              child: Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
