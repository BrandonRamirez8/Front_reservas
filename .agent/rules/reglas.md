1. Perfil del Proyecto
Contexto: Aplicación de escritorio/web interna para recepcionistas de una clínica de nutrición en Ocotlán.

Objetivo: Gestión de citas, registro de pacientes y disparador de notificaciones.

Stack: Flutter (Stable), Dart.

2. Arquitectura y Estructura (Mandatorio)
Patrón: Arquitectura por Capas (Separación estricta de UI y Lógica).

Estructura de Carpetas:

lib/ui/: Solo Widgets y diseño visual.

lib/logic/: Gestores de estado (usar Provider por simplicidad y robustez).

lib/services/: Comunicación con la API de Flask.

lib/models/: Clases de datos (usar json_serializable para el mapeo).

3. Estilo de Código y UI
Idioma: Código en Inglés (variables, clases), pero comentarios e Interfaz de Usuario (UI) en Español.

Diseño: Interfaz limpia y profesional (estilo médico). Usar Material 3.

Componentes: Priorizar el uso de DataTable para las citas y TableCalendar para la agenda.

Validación: Todos los formularios de registro deben incluir validaciones (teléfono de 10 dígitos, correos válidos, campos obligatorios).

4. Preferencias del Desarrollador
Enfoque Backend: Explicar los conceptos de Flutter haciendo analogías con el desarrollo backend (ej. comparar Services con Repositories).

Clean Code: Evitar archivos de más de 200 líneas. Si un Widget es muy grande, extraerlo en un archivo separado en ui/widgets/.

Async: Usar siempre async/await en lugar de .then().

5. Reglas Específicas del Negocio
Citas: La recepcionista es la única que crea citas. El agente debe priorizar la fluidez de este flujo.

Notificaciones: Preparar el código de los servicios para que acepten un "trigger" que enviará datos a Telegram/WhatsApp mediante el backend.