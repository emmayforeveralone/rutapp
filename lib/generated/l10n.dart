// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Base de Ida`
  String get Ida {
    return Intl.message(
      'Base de Ida',
      name: 'Ida',
      desc: '',
      args: [],
    );
  }

  /// `Base de regreso`
  String get Regreso {
    return Intl.message(
      'Base de regreso',
      name: 'Regreso',
      desc: '',
      args: [],
    );
  }

  /// `Ruta {ruta}`
  String Ruta(Object ruta) {
    return Intl.message(
      'Ruta $ruta',
      name: 'Ruta',
      desc: '',
      args: [ruta],
    );
  }

  /// `Ruta {ruta} Ida`
  String BaseI(Object ruta) {
    return Intl.message(
      'Ruta $ruta Ida',
      name: 'BaseI',
      desc: '',
      args: [ruta],
    );
  }

  /// `Ruta {ruta} Regreso`
  String BaseR(Object ruta) {
    return Intl.message(
      'Ruta $ruta Regreso',
      name: 'BaseR',
      desc: '',
      args: [ruta],
    );
  }

  /// `Ruta {ruta} Derecha`
  String BaseDer(Object ruta) {
    return Intl.message(
      'Ruta $ruta Derecha',
      name: 'BaseDer',
      desc: '',
      args: [ruta],
    );
  }

  /// `Ruta {ruta} Izquiera`
  String BaseIzq(Object ruta) {
    return Intl.message(
      'Ruta $ruta Izquiera',
      name: 'BaseIzq',
      desc: '',
      args: [ruta],
    );
  }

  /// `Selecciona una Combi`
  String get Combi {
    return Intl.message(
      'Selecciona una Combi',
      name: 'Combi',
      desc: '',
      args: [],
    );
  }

  /// `Mapa 3D`
  String get Mapa {
    return Intl.message(
      'Mapa 3D',
      name: 'Mapa',
      desc: '',
      args: [],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Idioma del Sistema`
  String get systemLanguage {
    return Intl.message(
      'Idioma del Sistema',
      name: 'systemLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'ht'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
