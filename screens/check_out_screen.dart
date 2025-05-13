import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Name")),
            TextField(decoration: InputDecoration(labelText: "Address")),
            TextField(decoration: InputDecoration(labelText: "City")),
            TextField(decoration: InputDecoration(labelText: "ZIP Code")),
            DropdownButtonFormField(
              items: ["Credit Card", "PayPal", "GCash", "GOTyme", "Cash On Delivery"].map((method) => DropdownMenuItem(value: method, child: Text(method))).toList(),
              onChanged: (value) {},
              decoration: InputDecoration(labelText: "Payment Method"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/order-confirmed'),
              child: Text("Place Order"),
            )
          ],
        ),
      ),
    );
  }
}