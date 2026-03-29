class Patient {
  final String id;
  final String name;
  final String phone; // Importante para WhatsApp/Telegram
  final String? email;
  final DateTime registrationDate;

  Patient({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.registrationDate,
  });

  // Para cuando recibas datos de tu backend en Flask (JSON -> Objeto)
  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      registrationDate: DateTime.parse(json['registration_date']),
    );
  }
}