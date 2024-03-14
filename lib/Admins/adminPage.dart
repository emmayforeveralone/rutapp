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
    // TODO: implement initState
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
              return Text('Loading...');
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            var user = snapshot.data!.data()!['ruta'];
            return Text("Admin $user");
          },
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 45.0),
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            key: _key,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                enableInteractiveSelection: false,
                keyboardType: TextInputType.number,
                controller: numeroCombi,
                autocorrect: true,
                validator: (Value) {
                  if (Value == null) {
                    return "Este campo es requerido";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Agregar Combi",
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
                enableInteractiveSelection: false,
                keyboardType: TextInputType.multiline,
                autocorrect: true,
                controller: placas,
                validator: (Value) {
                  if (Value == null) {
                    return "Este campo es requerido";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Agregar PLacas",
                    labelText: "Agregar Placas",
                    suffixIcon: const Icon(Icons.confirmation_number_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                enableInteractiveSelection: false,
                keyboardType: TextInputType.multiline,
                autocorrect: true,
                controller: conductor,
                validator: (Value) {
                  if (Value == null) {
                    return "Este campo es requerido";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Agregar Conductor",
                    labelText: "Agregar Conductor",
                    suffixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const SizedBox(height: 25.0),
              ElevatedButton(
                onPressed: () {
                  _save();
                },
                child: const Text("Agregar Combi"),
              ),
              ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text("CERRAR SESION"))
            ],
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
      print('El documento no existe en Firestore');
    }
  }
}
