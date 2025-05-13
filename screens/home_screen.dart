import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.teal,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.jpg', 
              height: 32,
            ),
            SizedBox(width: 10),
            Text('Pawfect Supplies'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailScreen(product: product)),
            ),
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset(product.image, fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('\$${product.price}', style: TextStyle(color: Colors.teal)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}