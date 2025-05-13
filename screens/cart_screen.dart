import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double get total => cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: Text('Your Cart'),
  backgroundColor: Colors.teal,
  foregroundColor: Colors.white, 
),
      body: cartItems.isEmpty
          ? Center(child: Text("Your cart is empty."))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Image.asset(item.image, width: 50),
                        title: Text(item.name),
                        subtitle: Text("Quantity: ${item.quantity}"),
                        trailing: Text("\$${(item.price * item.quantity).toStringAsFixed(2)}"),
                        onLongPress: () {
                          setState(() {
                            cartItems.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Total: \$${total.toStringAsFixed(2)}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/checkout'),
                        child: Text("Proceed to Checkout"),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}