import 'package:flutter/material.dart' hide SearchController;
import 'package:linkit/screens/Home/Components/EcommerceComponents/CategoryTemplate.dart';
import 'package:linkit/screens/Home/Components/RideComponents/Card.dart';
import 'package:linkit/screens/Home/Components/SearchField.dart';
import 'package:linkit/screens/Home/Components/controllers/search_controller.dart';
import 'package:linkit/screens/Home/Components/delivery_agent_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return ChangeNotifierProvider(
      create: (_) => SearchController(),
      child: Consumer<SearchController>(
        builder: (context, searchCtrl, child) {
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
            body: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                DeliveryAgentCard(),
                const SizedBox(height: 8),
                // 🔍 Search Bar (always on top)
                ProductSearchBar(
                  controller: searchCtrl.searchTextController,
                  onSearch: searchCtrl.searchProducts,
                  onClear: searchCtrl.clearSearch,
                ),

                const SizedBox(height: 16),

                // 🔹 If searching, show results
                if (searchCtrl.isLoading)
                  const Center(child: CircularProgressIndicator())
                else if (searchCtrl.searchResults.isNotEmpty)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: searchCtrl.searchResults.length,
                    itemBuilder: (context, index) {
                      final product = searchCtrl.searchResults[index];
                      return ListTile(
                        leading: Image.network(
                          product['imageUrl'],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product['name']),
                        subtitle: Text("\$${product['price']}"),
                      );
                    },
                  )
                else if (searchCtrl.searchTextController.text.isNotEmpty)
                  const Center(child: Text("No products found"))
                else
                  // 🔹 Default Home content (when no search)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RideCard(
                        title: "Book a ride now!",
                        imageUrl: "https://cdn.leonardo.ai/users/e24b77bc-36d4-43b9-89e1-9dad98b6d7b2/generations/1e550525-81d1-4e4f-bb4a-c301fd7a491b/Leonardo_Phoenix_09_an_image_that_describes_uber_kind_of_servi_0.jpg",
                      ),
                      Categorytemplate(categoryName: "Food Items"),
                      Categorytemplate(categoryName: "Stationary"),
                      Categorytemplate(categoryName: "Pharmaceuticals"),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
