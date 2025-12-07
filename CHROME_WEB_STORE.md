# Guía para Publicar en Chrome Web Store

Esta guía te ayudará a publicar la extensión **YouTube MrBeastify** en Chrome Web Store.

## 📋 Requisitos Previos

### 1. Cuenta de Desarrollador
- Ve a [Chrome Web Store Developer Console](https://chrome.google.com/webstore/devconsole)
- Inicia sesión con tu cuenta de Google
- Paga la tarifa única de registro de **$5 USD**
- Completa tu perfil de desarrollador

### 2. Archivos Necesarios ✅

Tu extensión ya está lista con todos los archivos necesarios:

- ✅ `manifest.json` (Manifest V3)
- ✅ Iconos en múltiples tamaños (`icons/icon-16.png`, `icon-48.png`, `icon-128.png`)
- ✅ Código fuente (`mrbeastify.js`, `settings.js`, `settings.html`)
- ✅ Política de privacidad (`PRIVACY_POLICY.md`)
- ✅ Recursos web (`images/`)

## 🔨 Crear el Paquete ZIP

Ejecuta el script de compilación:

```bash
.\build-chrome.bat
```

Esto creará un archivo `youtube-mrbeastify-v1.9.0.zip` con todos los archivos necesarios.

### Archivos Incluidos en el ZIP:
- `manifest.json`
- `icons/` (todos los iconos)
- `images/` (recursos)
- `mrbeastify.js`
- `settings.html`
- `settings.js`
- `icon.png`

### Archivos EXCLUIDOS:
- `.git/`
- `node_modules/`
- Archivos de desarrollo
- `manifest v3.json` (obsoleto)

## 📤 Subir a Chrome Web Store

### Paso 1: Subir el ZIP
1. Ve al [Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. Click en **"Nuevo elemento"**
3. Sube el archivo `youtube-mrbeastify-v1.9.0.zip`
4. Espera a que se valide el paquete

### Paso 2: Completar la Información

#### Información Básica
- **Nombre:** YouTube MrBeastify
- **Descripción corta:** 
  ```
  Modify YouTube thumbnails to include MrBeast
  ```
- **Descripción detallada:**
  ```
  Is your browser experience boring? Are you having trouble finding engaging click-baity videos?
  
  Fear no more!
  
  This extension adds the famous YouTuber MrBeast to every thumbnail on YouTube.
  
  Features:
  - Automatically modifies YouTube thumbnails
  - Customizable settings
  - Works on all YouTube pages
  - Completely local - no data collection
  
  This extension is unofficial and not affiliated with MrBeast or YouTube.
  ```

#### Categoría
- **Categoría principal:** Fun
- **Categoría secundaria:** Entertainment

#### Idioma
- Inglés (o el idioma que prefieras)

### Paso 3: Assets Gráficos

Necesitarás crear/subir:

#### **Screenshots** (al menos 1, máximo 5)
- Tamaño: 1280x800 o 640x400 píxeles
- Formato: PNG o JPEG
- Muestra la extensión en acción en YouTube

**Recomendación:** Toma screenshots de:
1. Página principal de YouTube con miniaturas modificadas
2. Página de resultados de búsqueda
3. El popup de configuración

#### **Ícono de la Tienda**
- Tamaño: 128x128 píxeles
- Ya lo tienes: `icons/icon-128.png` ✅

#### **Promotional Tile** (Opcional, pero recomendado)
- Tamaño pequeño: 440x280 píxeles
- Usa tu icono y texto "MrBeastify YouTube"

#### **Promotional Images** (Opcionales)
- Marquee: 1400x560 píxeles
- Para destacar en la tienda

### Paso 4: Privacidad

1. **¿Usa servicios de autenticación remotos?** NO
2. **¿Recopila o transmite datos de usuario?** NO
3. **Política de Privacidad:**
   - Sube el contenido de `PRIVACY_POLICY.md` a un sitio web público (como GitHub Pages)
   - O pega el contenido directamente en la consola
   - URL: `https://github.com/tu-usuario/valentify-Youtube/blob/main/PRIVACY_POLICY.md`

### Paso 5: Justificación de Permisos

Explica por qué necesitas cada permiso:

- **`storage`**: "Para guardar las preferencias de configuración del usuario localmente"
- **`host_permissions (*://*.youtube.com/*)`**: "Para acceder y modificar las miniaturas en las páginas de YouTube"

### Paso 6: Distribución

- **Visibilidad:** Pública
- **Regiones:** Todas (o selecciona regiones específicas)

## ✅ Checklist Final

Antes de publicar, verifica:

- [ ] El archivo ZIP se carga sin errores
- [ ] Todos los campos obligatorios están completos
- [ ] Tienes al menos 1 screenshot
- [ ] La política de privacidad está publicada en una URL pública
- [ ] La descripción es clara y sin errores
- [ ] Los permisos están justificados

## 🚀 Publicar

1. Click en **"Enviar para revisión"**
2. El proceso de revisión toma típicamente **1-3 días**
3. Recibirás un email cuando sea aprobada o si se necesitan cambios

## 📊 Después de la Publicación

Una vez aprobada:

- Tu extensión estará disponible en: `https://chrome.google.com/webstore/detail/[id-generado]`
- Puedes ver estadísticas en el Developer Dashboard
- Puedes actualizar la extensión subiendo nuevas versiones

## 🔄 Actualizar la Extensión

Para futuras actualizaciones:

1. Incrementa el número de versión en `manifest.json`
2. Ejecuta `build-chrome.bat` para crear nuevo ZIP
3. En el Developer Dashboard, sube el nuevo paquete
4. Describe los cambios en el changelog
5. Envía para revisión

## ⚠️ Problemas Comunes

### "Manifest version 2 is deprecated"
✅ **Resuelto** - Ya estás usando Manifest V3

### "Icon size not supported"
✅ **Resuelto** - Ya tienes iconos en 16x16, 48x48, y 128x128

### "Privacy policy required"
✅ **Resuelto** - Ya tienes `PRIVACY_POLICY.md`

## 📞 Soporte

Si tienes problemas:
- [Chrome Web Store Help](https://support.google.com/chrome_webstore/)
- [Developer Program Policies](https://developer.chrome.com/docs/webstore/program-policies/)

---

¡Buena suerte con tu publicación! 🎉
