enum AppointmentStatus { scheduled, completed, cancelled }

class Appointment {
  final String id;
  final String patientId; // Relación con el paciente
  final DateTime dateTime;
  final String motive; // Ej: "Primera consulta", "Seguimiento"
  final AppointmentStatus status;

  Appointment({
    required this.id,
    required this.patientId,
    required this.dateTime,
    required this.motive,
    this.status = AppointmentStatus.scheduled,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'],
      patientId: json['patient_id'],
      dateTime: DateTime.parse(json['date_time']),
      motive: json['motive'],
      status: AppointmentStatus.values.byName(json['status']),
    );
  }
}