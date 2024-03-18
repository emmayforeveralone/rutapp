import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rutapp/firebase_options.dart';
import 'package:rutapp/generated/l10n.dart';
import 'package:rutapp/login/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.ñl
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RUT-APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Login(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final preferencesRepository = Impl();
//   final preferencesBloc = PreferencesBloc(
//     preferenciasRepositorio: preferencesRepository,
//     initialLocale:
//         await preferencesRepository.locale ?? const Locale('en', 'US'),
//   );

//   runApp(MyApp(preferencesBloc: preferencesBloc));
// }

// class MyApp extends StatelessWidget {
//   final PreferencesBloc preferencesBloc;

//   const MyApp({Key? key, required this.preferencesBloc}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => preferencesBloc,
//       child: BlocBuilder<PreferencesBloc, PreferencesState>(
//         builder: (context, state) {
//           return MaterialApp(
//             title: 'Your App',
//             locale: state.locale,
//             localizationsDelegates: const [
//               // ... Agrega tus localizaciones delegadas aquí ...
//               GlobalMaterialLocalizations.delegate,
//               GlobalWidgetsLocalizations.delegate,
//             ],
//             supportedLocales: const [
//               const Locale('en', 'US'),
//               const Locale('es', 'ES'),
//               // ... Agrega los idiomas que soportas aquí ...
//             ],
//             home: const HomePage(),
//           );
//         },
//       ),
//     );
//   }
// }
