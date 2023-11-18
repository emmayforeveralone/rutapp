// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(ruta) => "Itinéraire ${ruta} Droite";

  static String m1(ruta) => "Itinéraire ${ruta} Aller à";

  static String m2(ruta) => "Itinéraire ${ruta} Gauche";

  static String m3(ruta) => "Itinéraire ${ruta} Retourner ";

  static String m4(ruta) => "Itinéraire ${ruta}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "BaseDer": m0,
        "BaseI": m1,
        "BaseIzq": m2,
        "BaseR": m3,
        "Combi": MessageLookupByLibrary.simpleMessage("Sélectionnez un Combi"),
        "Ida": MessageLookupByLibrary.simpleMessage("Base de départ"),
        "Mapa": MessageLookupByLibrary.simpleMessage("Carte 3D"),
        "Regreso": MessageLookupByLibrary.simpleMessage("Base de retour"),
        "Ruta": m4,
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "systemLanguage":
            MessageLookupByLibrary.simpleMessage("System Language")
      };
}
