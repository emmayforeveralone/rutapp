// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ht locale. All the
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
  String get localeName => 'ht';

  static String m0(ruta) => "Wout ${ruta} Dwat";

  static String m1(ruta) => "Wout ${ruta} Ale";

  static String m2(ruta) => "Wout ${ruta} Goch";

  static String m3(ruta) => "Wout ${ruta} Tounen";

  static String m4(ruta) => "Wout Ayisyen ${ruta} Ale";

  static String m5(ruta) => "Wout Ayisyen ${ruta} Retounen";

  static String m6(ruta) => "Wout ${ruta}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Admin": MessageLookupByLibrary.simpleMessage("Administratè"),
        "BaseDer": m0,
        "BaseI": m1,
        "BaseIzq": m2,
        "BaseR": m3,
        "Cliente": MessageLookupByLibrary.simpleMessage("Mwen se yon kliyan"),
        "Combi": MessageLookupByLibrary.simpleMessage("Chwazi yon konbi"),
        "Conductor": MessageLookupByLibrary.simpleMessage("Kondiktè"),
        "ForaneaI": m4,
        "ForaneaR": m5,
        "Ida": MessageLookupByLibrary.simpleMessage("Sortant Baz"),
        "Ingresar": MessageLookupByLibrary.simpleMessage("Antre"),
        "Mapa": MessageLookupByLibrary.simpleMessage("Kat 3D"),
        "NumCombi": MessageLookupByLibrary.simpleMessage("Nimewo Konbi"),
        "Pass": MessageLookupByLibrary.simpleMessage("Modpas"),
        "Placas": MessageLookupByLibrary.simpleMessage("Plak"),
        "Regreso": MessageLookupByLibrary.simpleMessage("Retounen baz"),
        "Ruta": m6,
        "User": MessageLookupByLibrary.simpleMessage("Itilizatè"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("System Language")
      };
}
