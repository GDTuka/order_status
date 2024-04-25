import 'package:order_status/data/lds/auth/auth_lds.dart';

class AuthRepository {
  AuthRepository({required AuthLDS authLDS}) : _authLDS = authLDS;
  final AuthLDS _authLDS;

  // Возвращает то авторизован пользователь или нет
  Future<bool> login(String id) async {
    //TODO() добавить проверку на авторизацию на бэке
    await _authLDS.write(id);
    return true;
  }
}
