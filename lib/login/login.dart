import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rutapp/Admins/adminPage.dart';
import 'package:rutapp/app/ui/paginas/home/home_page.dart';
import 'package:rutapp/generated/l10n.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AdminXochimilco()));
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.toString());

      if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // ignore: avoid_print
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/icon2.jpeg'),
                ),
                const SizedBox(height: 10),
                Text(
                  S().Admin,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  width: 160.0,
                  height: 15.0,
                  child: Divider(color: Colors.amber),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: S().User,
                    hintStyle: const TextStyle(color: Colors.black),
                    labelText: S().User,
                    labelStyle: const TextStyle(color: Colors.black),
                    suffixIcon: const Icon(Icons.verified_user_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  style: const TextStyle(color: Colors.black),
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Usuario no valido";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: S().Pass,
                      hintStyle: const TextStyle(color: Colors.black),
                      labelText: S().Pass,
                      labelStyle: const TextStyle(color: Colors.black),
                      suffixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  style: const TextStyle(color: Colors.black),
                  controller: _passwordController,
                  maxLength: 6,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Contraseña incorrecta";
                    }
                    if (value.length < 6) {
                      return "Debe ser mas de 6 digitos";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Ingresando...."),
                        ));
                        _signIn();
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Hay un error"),
                        ));
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: Text(
                      S().Ingresar,
                      style: const TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
