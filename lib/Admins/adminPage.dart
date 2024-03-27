// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rutapp/login/login.dart';

class AdminXochimilco extends StatefulWidget {
  const AdminXochimilco({super.key});

  @override
  State<AdminXochimilco> createState() => _AdminXochimilcoState();
}

class _AdminXochimilcoState extends State<AdminXochimilco> {
  TextEditingController numeroCombi = TextEditingController();
  TextEditingController placas = TextEditingController();
  TextEditingController conductor = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  late Future<DocumentSnapshot<Map<String, dynamic>>> userData;

  @override
  void initState() {
    super.initState();
    final userId = FirebaseAuth
        .instance.currentUser?.uid; // Obtener ID del usuario autenticado
    userData = FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .get(); // Filtrar por el ID del usuario
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: userData,
          builder: (context,
              AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Loading...');
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            var user = snapshot.data!.data()!['ruta'];
            return Text(
              "Admin $user",
              style: const TextStyle(
                  backgroundColor: Colors.transparent,
                  color: Colors.black,
                  fontSize: 19),
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 45.0),
        children: [
          const SizedBox(
            height: 20,
          ),
          Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: numeroCombi,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Este campo es obligatorio";
                    }
                    if (value.length < 2 || value.length > 2) {
                      return "Valor incorrecto";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: "Numero de Combi",
                    labelText: "Combi",
                    suffixIcon: const Icon(Icons.car_crash),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: placas,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Este campo es obligatorio";
                    }
                    if (value.length < 9 || value.length > 9) {
                      return "Valor incorrecto";
                    }
                    return null;
                  },
                  enableInteractiveSelection: false,
                  keyboardType: TextInputType.multiline,
                  autocorrect: true,
                  decoration: InputDecoration(
                      hintText: "PLacas de la Combi",
                      labelText: "Placas",
                      suffixIcon:
                          const Icon(Icons.confirmation_number_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: conductor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Este campo es obligatorio";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  autocorrect: true,
                  decoration: InputDecoration(
                      hintText: "Conductor de la Combi",
                      labelText: "Conductor",
                      suffixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                const SizedBox(height: 29.0),
                ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Los datos se han guardado con éxito"),
                      ));
                      _save();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Todos los campos son obligatorios"),
                      ));
                    }
                  },
                  child: const Text("Agregar Combi"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red, // Set the text color
                      elevation: 5, // Set the button's elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Set the button's border radius
                      ),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text("Cerrar Sesion"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> _save() async {
    var id = FirebaseAuth.instance.currentUser!.uid;
    var docSnapshot = await users.doc(id).get();
    if (docSnapshot.exists) {
      return users.doc(id).update({
        "numeroCombi": numeroCombi.text,
        "placas": placas.text,
        "conductor": conductor.text,
      });
    } else {
      // Manejar el caso donde el documento no existe
      // ignore: avoid_print
      print('El documento no existe en Firestore');
    }
  }
}
