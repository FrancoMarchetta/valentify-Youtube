# ✅ Checklist de Verificación - Chrome Web Store

Usa esta checklist para verificar que todo está listo antes de subir a Chrome Web Store.

## 📦 Paquete ZIP

- [x] Archivo `youtube-mrbeastify-v1.9.0.zip` creado
- [ ] Tamaño del archivo razonable (< 10 MB)
- [ ] Al extraer el ZIP, contiene:
  - [x] `manifest.json` (Manifest V3)
  - [x] `icons/icon-16.png`
  - [x] `icons/icon-48.png`
  - [x] `icons/icon-128.png`
  - [x] `images/` (con todas las imágenes de MrBeast)
  - [x] `mrbeastify.js`
  - [x] `settings.html`
  - [x] `settings.js`
  - [x] `icon.png`
  - [x] `PRIVACY_POLICY.md`
  - [x] `README.md`

## 🔧 Manifest V3

- [x] `manifest_version: 3`
- [x] Nombre definido: "YouTube MrBeastify"
- [x] Versión: 1.9.0
- [x] Descripción: "Modify YouTube thumbnails to include MrBeast"
- [x] Iconos en 3 tamaños (16, 48, 128)
- [x] Permisos correctamente configurados
- [x] `host_permissions` separado de `permissions`

## 🎨 Iconos

- [x] `icons/icon-16.png` (16x16) - creado ✅
- [x] `icons/icon-48.png` (48x48) - creado ✅
- [x] `icons/icon-128.png` (128x128) - creado ✅

## 📄 Documentación

- [x] `PRIVACY_POLICY.md` - completo
- [x] `CHROME_WEB_STORE.md` - guía de subida completa
- [x] `README.md` - existente
- [x] `store-assets/README.md` - instrucciones para screenshots

## 🔒 Privacidad

- [x] Política de privacidad en español creada
- [ ] URL pública para la política de privacidad
  - Opción 1: GitHub Pages
  - Opción 2: Pegar directamente en Chrome Web Store
  - **Recomendación:** Usa la URL de GitHub:
    `https://github.com/[tu-usuario]/valentify-Youtube/blob/main/PRIVACY_POLICY.md`

## 🧪 Prueba Local (IMPORTANTE - HAZ ESTO)

Antes de subir, prueba la extensión localmente:

### Pasos:

1. Abre Chrome
2. Ve a `chrome://extensions/`
3. Activa "Modo de desarrollador" (esquina superior derecha)
4. Click en "Cargar extensión sin empaquetar"
5. Selecciona la carpeta: `d:\000Code\valentify-Youtube`
6. Verifica que carga sin errores
7. Ve a YouTube.com
8. Verifica que las miniaturas se modifican con MrBeast
9. Click en el ícono de la extensión
10. Verifica que el popup de configuración funciona

### Checklist de Pruebas:

- [ ] Extensión carga sin errores en `chrome://extensions/`
- [ ] Ícono aparece en la barra de herramientas
- [ ] Miniaturas se modifican en YouTube homepage
- [ ] Miniaturas se modifican en búsqueda de YouTube
- [ ] Popup de configuración se abre correctamente
- [ ] Configuraciones se guardan correctamente
- [ ] No hay errores en la consola (F12)

## 📸 Assets Promocionales

Para Chrome Web Store necesitarás (crea estos manualmente):

### Screenshots (Obligatorio - al menos 1)
- [ ] Screenshot 1: Homepage de YouTube con miniaturas modificadas
  - Tamaño: 1280x800 o 640x400
  - Guardar en: `store-assets/screenshot-1.png`
- [ ] Screenshot 2: Resultados de búsqueda
- [ ] Screenshot 3: Popup de configuración

**Cómo crear screenshots:**
1. Carga la extensión en Chrome
2. Ve a YouTube
3. F12 → Device Toolbar → 1280x800
4. Captura de pantalla → Guardar en `store-assets/`

### Promotional Tile (Opcional pero recomendado)
- [ ] Small promo tile (440x280)
- [ ] Large promo tile (1400x560)

## 🌐 Cuenta de Desarrollador

- [ ] Cuenta de Google creada/lista
- [ ] Acceso a [Chrome Web Store Developer Console](https://chrome.google.com/webstore/devconsole)
- [ ] Tarifa de registro pagada ($5 USD único)
- [ ] Perfil de desarrollador completado

## 📤 Subida

- [ ] Leído `CHROME_WEB_STORE.md` completamente
- [ ] Listo para subir `youtube-mrbeastify-v1.9.0.zip`
- [ ] Descripción preparada
- [ ] Screenshots listos
- [ ] Política de privacidad publicada/lista

---

## ⚠️ Problemas Comunes

### Si la extensión no carga:
- Verifica que `manifest.json` esté en la raíz del proyecto
- Revisa errores en `chrome://extensions/`
- Asegúrate que todos los archivos referenciados existen

### Si las imágenes no cargan:
- Verifica que la carpeta `images/` contiene los PNG
- Revisa `web_accessible_resources` en manifest.json

### Si el popup no funciona:
- Verifica que `settings.html` existe
- Revisa la consola de DevTools para errores

---

## ✨ Listo para Publicar

Una vez completado todo:

1. ✅ Ejecuta `build-chrome.bat` (ya hecho)
2. ✅ Prueba la extensión localmente
3. 📸 Crea screenshots
4. 🌐 Sube a Chrome Web Store Developer Console
5. 📝 Completa información y sube screenshots
6. 🚀 Envía para revisión

**¡Buena suerte! 🎉**
