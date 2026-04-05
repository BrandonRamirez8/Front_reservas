import 'package:flutter/foundation.dart';

class ApiConstants {
  ApiConstants._();

  // Cambia esto por tu IP local cuando uses dispositivo físico
  static const String _localIp = '192.168.1.100';

  static String get baseUrl {
    if (kIsWeb) return 'http://localhost:8000';
    if (defaultTargetPlatform == TargetPlatform.android) return 'http://10.0.2.2:8000';
    return 'http://localhost:8000'; // iOS / desktop
  }

  // Auth
  static String get login    => '$baseUrl/auth/token';
  static String get register => '$baseUrl/auth/register';

  // Pacientes
  static String get patients => '$baseUrl/patients/';

  // Citas
  static String get appointments => '$baseUrl/appointments/';
}
