# 🚀 SWAT-CAS PowerShell Menu

**Sistema de Acceso Rápido a Terminal y Consolas de Administración Sistema**

Un menú interactivo para acceder rápidamente a PowerShell, CMD, y herramientas de desarrollo con diferentes configuraciones y permisos.

```
█▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀
▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█
```

## ✨ Características

- **Acceso rápido a PowerShell** con diferentes configuraciones
- **Ejecución con permisos de administrador** automática
- **Múltiples ubicaciones de trabajo** (Desktop, Downloads, Documents, etc.)
- **Integración con herramientas de desarrollo** (Git Bash, VS Code, Terminal Windows)
- **Acceso directo global** con combinación de teclas `Ctrl+Alt+P`
- **Interface visual amigable** con menús organizados

## 📋 Requisitos del Sistema

- **Windows 10/11** (recomendado)
- **PowerShell 5.0** o superior (incluido en Windows)
- **Permisos de administrador** para la instalación
- **Git** (opcional, para clonar el repositorio)

## 🛠️ Instalación

### Método 1: Clonación desde GitHub (Recomendado)

1. **Abre PowerShell o CMD como Administrador**
   ```bash
   # Clic derecho en el menú de inicio → "Windows PowerShell (Admin)"
   ```

2. **Navega a tu carpeta deseada Desktop**
   ```powershell
   cd C:\Users\%USERNAME%\Desktop
   # o la ubicación donde quieras instalar SWAT-CAS
   ```

3. **Clona el repositorio**
   ```bash
   git clone https://github.com/Hector-SWAT/CAS-application-launcher-Windows.git
   ```

4. **Entra al directorio del proyecto**
   ```bash
   cd swat-cas
   ```

5. **Ejecuta el instalador con permisos de administrador**
   ```bash
   # Clic derecho en install.bat → "Ejecutar como administrador"
   ```

### Método 2: Descarga Manual

1. **Descarga los archivos**
   - Descarga `install.bat` y `menu_ps.bat` desde el repositorio
   - Guárdalos en una de estas ubicaciones:
     - `C:\Users\%USERNAME%\Desktop\`
     - `C:\Users\%USERNAME%\Downloads\`
     - `C:\Users\%USERNAME%\Documents\`

2. **Ejecuta el instalador**
   - **Clic derecho** en `install.bat`
   - Selecciona **"Ejecutar como administrador"**
   - Acepta el UAC (Control de Cuentas de Usuario) si aparece

## 🔧 Proceso de Instalación Detallado

El instalador realizará automáticamente los siguientes pasos:

### Paso 1: Detección Automática
```
🔍 [1/2] Buscando menu_ps.bat en ubicaciones comunes...
```
El sistema buscará `menu_ps.bat` en:
- `Desktop` (Escritorio)
- `OneDrive\Desktop`
- `Downloads` (Descargas)
- `OneDrive\Downloads`
- `Documents` (Documentos)
- `OneDrive\Documents`
- Carpeta de usuario

### Paso 2: Creación del Acceso Directo
```
🎯 [2/2] Creando acceso directo con Ctrl+Alt+P...
```
- Crea un acceso directo en el Escritorio
- Configura la combinación de teclas `Ctrl+Alt+P`
- Establece ejecución con permisos de administrador

## ✅ Verificación de Instalación

Después de la instalación exitosa, verás:

```
═══════════════════════════════════════════════════════════════════
                     🎉 CONFIGURACIÓN COMPLETADA 🎉
═══════════════════════════════════════════════════════════════════

╔════════════════════════════════════════════════════════════════╗
║                    SWAT-CAS CONFIGURADO                       ║
║  🎯 Archivo objetivo: menu_ps.bat                             ║
║  📍 Ubicación: [Tu ubicación]                                ║
║  ✅ Acceso directo: Creado con Ctrl+Alt+P                    ║
║  🔐 Permisos: Se ejecutará como administrador                 ║
╚════════════════════════════════════════════════════════════════╝
```

## 🚀 Cómo Usar SWAT-CAS

### Formas de Ejecutar

1. **Atajo de Teclado Global**
   ```
   Ctrl + Alt + P
   ```

2. **Acceso Directo del Escritorio**
   - Doble clic en "SWAT-CAS PowerShell Menu"

3. **Ejecución Manual**
   ```powershell
   # Desde PowerShell
   .\menu_ps.bat
   
   # O con permisos de administrador
   powershell -Command "Start-Process '.\menu_ps.bat' -Verb RunAs"
   ```

### Opciones del Menú

#### 🟢 Opciones Básicas
- **PowerShell Normal** - Sesión estándar
- **PowerShell Administrador** - Con elevación de privilegios
- **PowerShell en Documents** - Abre en carpeta Documentos
- **PowerShell en Downloads** - Abre en carpeta Descargas

#### 🔵 Opciones Avanzadas
- **PowerShell en Escritorio** - Abre en el Desktop
- **PowerShell ISE** - Editor integrado (Windows 10)
- **Terminal Windows** - Nueva terminal de Microsoft
- **CMD Administrador** - Command Prompt elevado

#### ⚙️ Herramientas de Desarrollo
- **Proyecto Personalizado** - Abre en ruta específica
- **Git Bash** - Si está instalado
- **VS Code** - Si está instalado
- **Variables de Entorno** - Configuración del sistema

## 🔧 Solución de Problemas

### El instalador no encuentra menu_ps.bat
```bash
❌ No se encontró menu_ps.bat en ninguna ubicación común
```
**Solución:**
- Asegúrate de que ambos archivos (`install.bat` y `menu_ps.bat`) estén en la misma carpeta
- Verifica que están en una de las ubicaciones admitidas

### Error de permisos durante la instalación
```bash
❌ Error al crear el acceso directo
```
**Solución:**
- Ejecuta `install.bat` como administrador
- Verifica que tienes permisos de escritura en el Escritorio

### UAC solicita permisos constantemente
**Comportamiento Normal:**
- Windows solicitará confirmación UAC al ejecutar
- Esto es necesario para obtener permisos de administrador
- Puedes hacer clic en "Sí" para continuar

### Git Bash o VS Code no se encuentran
```bash
❌ Git Bash no encontrado
❌ VS Code no encontrado en PATH
```
**Solución:**
- Instala las herramientas desde sus sitios oficiales
- Git: https://git-scm.com/download/win
- VS Code: https://code.visualstudio.com/

## 📁 Estructura del Proyecto

```
swat-cas/
├── install.bat          # Instalador principal
├── menu_ps.bat          # Menú interactivo de PowerShell
├── README.md            # Este archivo
└── assets/              # Recursos adicionales (si los hay)
```

## 🔄 Actualización

Para actualizar SWAT-CAS:

1. **Si instalaste desde Git:**
   ```bash
   git pull origin main
   ```

2. **Si descargaste manualmente:**
   - Descarga los nuevos archivos
   - Ejecuta `install.bat` nuevamente

## 🗑️ Desinstalación

Para desinstalar SWAT-CAS:

1. **Elimina el acceso directo** del Escritorio:
   - "SWAT-CAS PowerShell Menu.lnk"

2. **Elimina los archivos** del proyecto:
   - `install.bat`
   - `menu_ps.bat`

3. **Limpia las combinaciones de teclas:**
   - Las combinaciones se eliminan automáticamente al borrar el acceso directo

## 👤 Desarrollado por

**swat_h** - Creador de SWAT-CAS

## 📄 Licencia

Este proyecto está bajo una licencia de uso libre. Consulta el archivo LICENSE para más detalles.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/nueva-caracteristica`)
3. Commit tus cambios (`git commit -am 'Añadir nueva característica'`)
4. Push a la rama (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request

## 📞 Soporte

Si encuentras algún problema o tienes sugerencias:

- **Issues**: [GitHub Issues](https://github.com/tu-usuario/swat-cas/issues)
- **Email**: tu-email@ejemplo.com

---

```
    █▀▀ █░█░█ ▄▀█ ▀█▀   █▀▀ ▄▀█ █▀
    ▄▄█ ▀▄▀▄▀ █▀█ ░█░   █▄▄ █▀█ ▄█
    
¡Gracias por usar SWAT-CAS PowerShell Menu!
```