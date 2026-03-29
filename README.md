# 🩺 Front Violeta

Bienvenido al repositorio de **Front Violeta**. Esta aplicación está desarrollada utilizando [Flutter](https://flutter.dev/) para el frontend móvil/web.

## 🛠️ Tecnologías y Dependencias

- **Framework:** Flutter (SDK >= 3.11.3)
- **Lenguaje:** Dart
- **Gestión de Estado:** [Provider](https://pub.dev/packages/provider)

## 📂 Estructura del Proyecto

El código fuente principal se encuentra en la carpeta lib. La estructura actual está orientada a mantener el código limpio y organizado:

`	ext
lib/
├── models/         # Clases de dominio (ej. patient.dart, appointment.dart)
├── ui/
│   ├── screens/    # Pantallas principales de la aplicación
│   ├── theme/      # Configuración de colores, tipografías y estilos
│   └── widgets/    # Componentes reutilizables de la interfaz
└── main.dart       # Punto de entrada de la aplicación principal
`

## 🚀 Pre-requisitos y Configuración Local

Para poder ejecutar el proyecto localmente, necesitas tener instalado:

1. [Flutter SDK](https://docs.flutter.dev/get-started/install) 
2. Un IDE (VS Code o Android Studio) con las extensiones de Flutter y Dart.

### Pasos para iniciar en local

1. Asegúrate de estar en la rama correcta del repositorio.
2. Abre una terminal en la raíz del proyecto (Front_Violeta/front) y descarga las dependencias:
   ``bash
   flutter pub get
   ``
3. Ejecuta la aplicación en tu Android/iOS o simulador:
   ``bash
   flutter run
   ``

## 📝 Reglas de Contribución y Desarrollo

- **Gestión de estado:** Se utiliza \provider\. Intentemos asegurar que la lógica de negocio se separe adecuadamente de las vistas (\screens/\ y \widgets/\).
- **Lints:** El proyecto usa \lutter_lints\. Por favor, resuelve los warnings antes de realizar commits.
- **Modelos:** Cualquier entidad de negocio nueva (ej. Doctores, Exámenes) debe guardarse en el directorio de \models/\.

---
*Este documento se irá actualizando a medida que el proyecto y los microservicios escalen.*
