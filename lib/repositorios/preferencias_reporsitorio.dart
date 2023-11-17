import 'dart:ui';

abstract class PreferenciasRepositorio {
  Future<void> saveLocale(Locale locale);

  Future<void> get locale;
}
