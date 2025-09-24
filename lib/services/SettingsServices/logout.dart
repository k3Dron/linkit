import 'package:firebase_auth/firebase_auth.dart';

void firebaseLogout() {
  FirebaseAuth.instance.signOut();
}