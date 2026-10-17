# 📘 Bitácora y Handoff — Proyecto Stockea

> **Instrucciones para el próximo desarrollador o IA:**
> 1. Leer este documento completo antes de tocar cualquier código.
> 2. Al finalizar cada sesión de trabajo, agregar una entrada en la sección "Bitácora de Sesiones" y actualizar la sección "Handoff".
> 3. No modificar archivos fuera de las carpetas permitidas (ver Arquitectura).

---

## 1. Información General del Proyecto

- **Nombre:** Stockea
- **Concepto:** App móvil híbrida (RedNote + Pinterest + Mercado Libre) para descubrimiento visual y compra en Argentina.
- **Stack:** Flutter (Dart) + Supabase (Backend/Auth/Storage) + GitHub.
- **Diseño:** Paleta moderna: Fondo `#F9FBFC`, Navy `#0B033C`, Coral `#FF6652`, Celeste `#C7E3EE`, Rosa `#F0D1CD`.
- **Entorno Actual:** Windows 11, VS Code, Flutter 3.47.6, Emulador Pixel 7 (Android 17).

---

## 2. Arquitectura y Estructura

- `lib/` → Código principal de la app (solo archivos `.dart`).
- `docs/` → Documentación, panel web de progreso (`index.html`) y este archivo.
- `android/`, `ios/` → Configuración nativa de las plataformas.
- `test/` → Pruebas automáticas.

**Regla de oro:** No tocar la carpeta `docs` desde el código de Flutter. No tocar `android/` ni `ios/` a menos que sea estrictamente necesario.

---

## 3. Cómo trabajar en este proyecto (Workflow)

### Comandos de Flutter (Terminal VS Code):
- `flutter run -d emulator-5554` → Arranca la app en el emulador.
- `r` (minúscula) → Hot Reload (cambios rápidos).
- `R` (MAYÚSCULA) → Hot Restart (reinicio completo).
- `q` → Detener la app.
- `flutter doctor -v` → Diagnóstico del entorno.

### Uso de la IA (Copilot) en VS Code:
- **Siempre revisar** los comandos de terminal que Copilot propone ejecutar. Si algo no se entiende, hacer clic en "Skip" y pedirle que lo haga manualmente.
- Usar a la IA para crear archivos, refactorizar código o explicar errores.
- **Nunca** permitir que la IA modifique archivos de configuración nativa (`android/`, `ios/`) sin supervisión.

---

## 4. Bitácora de Sesiones

### Sesión 1 — 16 de Octubre de 2026
**Objetivo:** Configurar el entorno y crear el esqueleto de la app.
**Logros:**
- Creación del proyecto Flutter en `C:\Proyectos\stockea`.
- Instalación del NDK 28.2.13676358 (necesario para compilar).
- App corriendo exitosamente en emulador Pixel 7.
- Definición de la paleta de colores en `lib/main.dart`.
- Splash screen funcional con el nombre "STOCKEA".
- Repositorio de GitHub creado y sincronizado.
- Panel web de progreso creado en `docs/index.html`.
**Problemas resueltos:** El build fallaba por falta del NDK. Se solucionó instalando la versión correcta desde Android Studio > SDK Manager.

---

## 5. Handoff (Estado Actual y Próximos Pasos)

### Estado Actual (Última actualización: 16/10/2026)
- **Fase completada:** Fase 1 (Configuración inicial) — 100%.
- **App funcional:** Sí, muestra pantalla de inicio con colores oficiales.
- **Base de datos:** No configurada aún.

### Próximos Pasos (Tareas Pendientes para la Sesión 2)
1. **Fase 2: Conexión con Supabase.**
   - Crear el proyecto en la plataforma de Supabase.
   - Configurar variables de entorno (`flutter_dotenv`).
   - Inicializar Supabase en Flutter (`supabase_flutter`).
   - Crear las primeras tablas SQL (`profiles`, `notes`).
2. **Fase 3: Autenticación.**
   - Pantallas de Login y Registro.

### Notas para el próximo desarrollador/IA:
- El emulador **debe estar encendido** antes de correr la app.
- Si la app se ve rara después de un cambio, usar `R` (mayúscula) para reiniciar.
- Revisar el archivo `docs/index.html` si se necesita actualizar el progreso visual para los colaboradores.
