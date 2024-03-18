import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rutapp/Admins/adminPage.dart';
import 'package:rutapp/app/ui/paginas/home/home_page.dart';
import 'package:rutapp/firebase/firebase_auth_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.greenAccent,
                backgroundImage: AssetImage('assets/icon2.jpeg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Administrador',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(color: Colors.amber),
              ),
              TextFormField(
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: "Usuario",
                  labelText: "Usuario",
                  suffixIcon: const Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                controller: _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: "Contraseña",
                    labelText: "Contraseña",
                    suffixIcon: const Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                controller: _passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: _signIn, child: const Text("INGRESAR")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Soy cliente")),
            ],
          ),
        ],
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User SIGN IN");
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AdminXochimilco()));
    } else {
      // ignore: avoid_print
      print("SOME ERROR HAPPEND");
    }
  }
}
