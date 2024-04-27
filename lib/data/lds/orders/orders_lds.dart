import 'package:shared_preferences/shared_preferences.dart';

class OrdersLDS {
  OrdersLDS({
    required this.prefs,
  });
  SharedPreferences prefs;

  final String _key = 'key';

  Future<void> setOrders(List<String> orders) async => prefs.setStringList(_key, orders);

  List<String>? getOrders() => prefs.getStringList(_key);

  Future<void> deleteOrders() async => await prefs.remove(_key);
}
