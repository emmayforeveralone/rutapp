// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(ruta) => "Route ${ruta} Right";

  static String m1(ruta) => "Route ${ruta} Going";

  static String m2(ruta) => "Route ${ruta} Left";

  static String m3(ruta) => "Route ${ruta} Return";

  static String m4(ruta) => "Foreign Route ${ruta}";

  static String m5(ruta) => "Foreign Route ${ruta} Going";

  static String m6(ruta) => "Foreign Route ${ruta} Return";

  static String m7(ruta) => "Route ${ruta}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Admin": MessageLookupByLibrary.simpleMessage("Administrator"),
        "BaseDer": m0,
        "BaseI": m1,
        "BaseIzq": m2,
        "BaseR": m3,
        "Cliente": MessageLookupByLibrary.simpleMessage("I am a Client"),
        "Combi": MessageLookupByLibrary.simpleMessage("Select a Combi"),
        "Conductor": MessageLookupByLibrary.simpleMessage("Driver"),
        "Foranea": m4,
        "ForaneaI": m5,
        "ForaneaR": m6,
        "Hora": MessageLookupByLibrary.simpleMessage(
            "Check-in and check-out time:"),
        "Ida": MessageLookupByLibrary.simpleMessage("One-Way Basis"),
        "Ingresar": MessageLookupByLibrary.simpleMessage("Login"),
        "Mapa": MessageLookupByLibrary.simpleMessage("Map 3D"),
        "NumCombi": MessageLookupByLibrary.simpleMessage("Combi Number"),
        "Pass": MessageLookupByLibrary.simpleMessage("Passsword"),
        "Placas": MessageLookupByLibrary.simpleMessage("License Plates"),
        "Regreso": MessageLookupByLibrary.simpleMessage("Return Basis"),
        "Ruta": m7,
        "User": MessageLookupByLibrary.simpleMessage("User"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("System Language")
      };
}
