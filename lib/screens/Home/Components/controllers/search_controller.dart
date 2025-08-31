import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SearchController extends ChangeNotifier {
  final TextEditingController searchTextController = TextEditingController();

  bool isLoading = false;
  List<Map<String, dynamic>> searchResults = [];

  /// Search products from Firestore
  Future<void> searchProducts() async {
    final query = searchTextController.text.trim();
    if (query.isEmpty) {
      searchResults = [];
      notifyListeners();
      return;
    }

    isLoading = true;
    notifyListeners();

    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('products')
          .where('searchKeywords', arrayContains: query.toLowerCase())
          .get();

      searchResults =
          snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      debugPrint("Error while searching products: $e");
      searchResults = [];
    }

    isLoading = false;
    notifyListeners();
  }

  /// Clear the search field and results
  void clearSearch() {
    searchTextController.clear();
    searchResults = [];
    notifyListeners();
  }
}
