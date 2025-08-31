import 'package:flutter/material.dart';
import 'package:linkit/screens/Cart/components/total_order_card.dart';
import 'components/address_card.dart';
import 'components/cart_item_card.dart';
import 'components/proceed_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("linkit", style: theme.textTheme.headlineMedium)
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Delivery Address Section
            const AddressCard(
              address: "216 St Paul’s Rd, London N1 2LL, UK",
              contact: "+44-784232",
            ),
            const SizedBox(height: 16),

            /// Shopping List Section
            Text(
              "Shopping List",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),

            /// Cart Items
            const CartItemCard(
              imageUrl: "assets/Cart/dummy.png",
              title: "Women’s Casual Wear",
              variations: ["Black", "Red"],
              rating: 4.8,
              price: 34.00,
              oldPrice: 64.00,
              discount: 33,
              quantity: 1,
            ),
            const SizedBox(height: 12),
            const CartItemCard(
              imageUrl: "assets/Cart/dummy.png",
              title: "Men’s Jacket",
              variations: ["Green", "Grey"],
              rating: 4.7,
              price: 45.00,
              oldPrice: 67.00,
              discount: 28,
              quantity: 1,
            ),
            const SizedBox(height: 16),

            /// Total Order Section
            const TotalOrderSection(total: 79.00),
            const SizedBox(height: 24),

            /// Proceed Button
            const ProceedButton(),
          ],
        ),
      ),
    );
  }
}
