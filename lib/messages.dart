import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_America': {'hello': 'Hello'},
        'hindi_India': {'hello': 'Namaskar'},
        'french_French': {'hello': 'Bonjour'},
      };
}
