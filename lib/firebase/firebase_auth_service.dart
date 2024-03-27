import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
  }
}

FirebaseFirestore db = FirebaseFirestore.instance;

Future<Map<String, dynamic>> getUserData(String userId) async {
  try {
    DocumentSnapshot userData = await db.collection("users").doc(userId).get();

    if (userData.exists) {
      return userData.data() as Map<String, dynamic>;
    } else {
      return {}; // Devuelve un mapa vacío si el documento no existe
    }
  } catch (e) {
    // Manejar la excepción aquí, por ejemplo, mostrar un mensaje de error al usuario
    print("Error al obtener los datos del usuario: $e");
    return {}; // Devuelve un mapa vacío en caso de error
  }
}
