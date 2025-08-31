import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get userChanges => _auth.authStateChanges();

  // Google Sign-In (works on Web, Android, iOS)
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final googleProvider = GoogleAuthProvider();
      googleProvider.setCustomParameters({'prompt': 'select_account'});

      if (kIsWeb) {
        // ✅ For Web
        return await _auth.signInWithPopup(googleProvider);
      } else if (Platform.isAndroid || Platform.isIOS) {
        // ✅ For Android / iOS
        return await _auth.signInWithProvider(googleProvider);
      } else {
        throw UnsupportedError("Google Sign-In not supported on this platform");
      }
    } catch (e) {
      print("Google Sign-In error: $e");
      return null;
    }
  }

  Future<void> signOut() async => _auth.signOut();

  User? get currentUser => _auth.currentUser;
}
