import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/checkout_page.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key, required this.product}) : super(key: key);

  final Product product;

  // Function to handle the "Add to Cart" button click
  void addToCart() {
    // You can implement your logic here to add the product to the cart.
    // For example, you can use a state management solution like Provider or Riverpod.
    print("Added to Cart: ${product.title}");
  }

  // Function to handle the "Buy Now" button click and navigate to the checkout page
  void buyNow(BuildContext context) {
    // You can implement your logic here to initiate the purchase process.
    print("Buy Now: ${product.title}");

    // Use Navigator to navigate to the checkout page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CheckoutPage(product: product)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                colorFilter: ColorFilter.mode(product.color, BlendMode.srcIn),
              ),
              onPressed:
                  addToCart, // Call the addToCart function on button click
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                buyNow(context); // Call the buyNow function with the context
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                backgroundColor: product.color,
              ),
              child: Text(
                "Buy Now".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
