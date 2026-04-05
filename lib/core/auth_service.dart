import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api_config.dart';

class AuthService {
  AuthService._();

  // Inicia sesión y retorna el access_token, o lanza una excepción con el error
  static Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(ApiConstants.login),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      // El campo se llama 'username' por estándar OAuth2, aunque sea un email
      body: {'username': email, 'password': password},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['access_token'] as String;
    } else if (response.statusCode == 401) {
      throw Exception('Credenciales incorrectas.');
    } else if (response.statusCode == 422) {
      throw Exception('Datos inválidos. Verifica tu correo y contraseña.');
    } else {
      throw Exception('Error inesperado (${response.statusCode}).');
    }
  }
}
