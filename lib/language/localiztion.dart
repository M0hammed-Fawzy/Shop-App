import 'package:get/route_manager.dart';
import 'package:car/language/ar.dart';
import 'package:car/language/en.dart';
import 'package:car/language/fr.dart';
import 'package:car/utils/my_string.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
