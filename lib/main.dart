import 'package:flutter/material.dart';

import 'package:rutapp/app/ui/paginas/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RUT-APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}


//  keytool -genkey -v -keystore C:\Users\emman\AndroidStudioProjects\rutapp/key/rutapp_key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias rutapp

// keytool -list -v -keystore "C:\Users\emman\AndroidStudioProjects\rutapp\key\rutapp_key.jks" -alias rutapp -storepass uptap_password -keypass uptap_password

/*
  storePassword= uptap_password         E2:E2:73:FE:7B:FF:38:4B:D9:39:66:B7:D8:C1:6D:FF:3F:D3:19:94  com.uptap.rutapp
keyPassword= uptap_password
keyAlias= rutapp
storeFile= C:/Users/emman/AndroidStudioProjects/rutapp/rutapp_key.jks
 */  