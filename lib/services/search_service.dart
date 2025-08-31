import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Search by keywords
  Future<List<Map<String, dynamic>>> searchProducts(String query) async {
    if (query.isEmpty) return [];

    // Make lowercase for consistency
    final searchKey = query.toLowerCase();

    final snapshot = await _db
        .collection('products')
        .where('searchName', arrayContains: searchKey)
        .get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}
