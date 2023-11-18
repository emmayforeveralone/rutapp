// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr_HT locale. All the
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
  String get localeName => 'fr_HT';

  static String m0(ruta) => "Wout ${ruta} Dwa";

  static String m1(ruta) => "Wout ${ruta} Alé";

  static String m2(ruta) => "Wout ${ruta} Goche";

  static String m3(ruta) => "Wout ${ruta} Tounen";

  static String m4(ruta) => "Wout ${ruta}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "BaseDer": m0,
        "BaseI": m1,
        "BaseIzq": m2,
        "BaseR": m3,
        "Combi": MessageLookupByLibrary.simpleMessage("Chwazi yon Combi"),
        "Ida": MessageLookupByLibrary.simpleMessage("Baz Alé"),
        "Mapa": MessageLookupByLibrary.simpleMessage("Kat 3D"),
        "Regreso": MessageLookupByLibrary.simpleMessage("Baz Tounen"),
        "Ruta": m4,
        "language": MessageLookupByLibrary.simpleMessage("Lang"),
        "systemLanguage": MessageLookupByLibrary.simpleMessage("Lang Sistèm")
      };
}
