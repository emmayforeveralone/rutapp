// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static String m0(ruta) => "Ruta ${ruta} Derecha";

  static String m1(ruta) => "Ruta ${ruta} Ida";

  static String m2(ruta) => "Ruta ${ruta} Izquiera";

  static String m3(ruta) => "Ruta ${ruta} Regreso";

  static String m4(ruta) => "Ruta ${ruta}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "BaseDer": m0,
        "BaseI": m1,
        "BaseIzq": m2,
        "BaseR": m3,
        "Combi": MessageLookupByLibrary.simpleMessage("Selecciona una Combi"),
        "Ida": MessageLookupByLibrary.simpleMessage("Base de Ida"),
        "Mapa": MessageLookupByLibrary.simpleMessage("Mapa 3D"),
        "Regreso": MessageLookupByLibrary.simpleMessage("Base de regreso"),
        "Ruta": m4,
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("Idioma del Sistema")
      };
}
