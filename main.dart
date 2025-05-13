import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/check_out_screen.dart';
import 'screens/order_confirmed_screen.dart';
import 'models/product.dart';

void main() => runApp(PetStoreApp());

class PetStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pawfect Supplies',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/cart': (context) => CartScreen(),
        '/checkout': (context) => CheckoutScreen(),
        '/order-confirmed': (context) => OrderConfirmedScreen(),
      },
    );
  }
}
