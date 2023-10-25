import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class CartPage extends StatelessWidget {
  final List<Product> cartItems; // Replace this with your actual cart data

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            leading:
                Image.network(product.image), // Use the actual image source
            title: Text(product.title),
            subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
            // Add any additional information you want to display for each item
          );
        },
      ),
    );
  }
}
