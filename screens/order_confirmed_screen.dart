import 'package:flutter/material.dart';
import '../models/product.dart';

class OrderConfirmedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cartItems.clear();
    return Scaffold(backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 80),
            SizedBox(height: 10),
            Text("Order Confirmed!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text("Back to Home"),
            )
          ],
        ),
      ),
    );
  }
}