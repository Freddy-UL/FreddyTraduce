# FreddyTraduce — Frontend

Este repositorio contiene el frontend de FreddyTraduce, una aplicación de traducción desarrollada con React y Vite. El proyecto está dividido en dos carpetas principales en la raíz del workspace: `frontend/` (esta aplicación) y `backend/` (servidor Node.js). El repositorio remoto principal es:

https://github.com/Freddy-UL/FreddyTraduce.git

## Contenido de este README

- Descripción general del proyecto
- Tecnologías usadas
- Cómo crear un nuevo proyecto React (breve guía)
- Estructura del proyecto (frontend)
- Cómo ejecutar localmente (frontend + backend)
- Cómo publicar / subir al repositorio remoto (GitHub)
- Contribuir y licencias

## Descripción

FreddyTraduce es una pequeña aplicación web de traducción. El frontend está construido con React y Vite, y se comunica con un backend Node.js (carpeta `backend/`) que expone la API necesaria para realizar traducciones o gestionar datos.

El objetivo de este README es explicar cómo empezar desde cero, cómo funciona la estructura actual y cómo desplegarlo en GitHub usando la URL del repositorio.

## Tecnologías

- Frontend: React, Vite, JSX
- Estilos: CSS (archivos en `src/` y `components/`)
- Build tool: Vite
- Backend: Node.js (en `../backend`)
- Control de versiones: Git

## Cómo crear un nuevo proyecto React (breve guía)

Si necesitas crear un nuevo proyecto React con Vite, estos son los pasos básicos:

1. Asegúrate de tener Node.js y npm (o pnpm/yarn) instalados.
2. Ejecuta (ejemplo con npm):

   npm create vite@latest my-app -- --template react

3. Entra al directorio e instala dependencias:

   cd my-app; npm install

4. Inicia el servidor de desarrollo:

   npm run dev

Esto generará una estructura similar a la que ves en `frontend/` de este proyecto. En nuestro caso ya tenemos el proyecto configurado con Vite y los componentes en `src/`.

## Estructura del frontend (resumen)

Rutas y archivos principales en `frontend/`:

- `index.html` — HTML raíz para Vite
- `package.json` — scripts y dependencias
- `vite.config.js` — configuración de Vite
- `src/main.jsx` — punto de entrada React
- `src/App.jsx` — componente principal
- `src/components/` — componentes reutilizables (BarraBusqueda, Tabla, Traductor, etc.)
- `src/servicios/api.js` — utilidades para llamadas al backend
- `public/` — archivos estáticos servidos por Vite

Revisa `src/components` para ver la implementación de cada UI.

## Cómo ejecutar el proyecto localmente

Requisitos:

- Node.js (v14+ recomendado)
- npm o pnpm/yarn

1. Instalar dependencias del frontend

   cd frontend
   npm install

2. Instalar dependencias del backend (en otra terminal)

   cd ../backend
   npm install

3. Ejecutar el backend

   cd backend
   node server.js

   (o si hay scripts definidos: npm run start)

4. Ejecutar el frontend

   cd ../frontend
   npm run dev

Por defecto Vite levantará el frontend en `http://localhost:5173` (o el puerto que indique). Asegúrate que el backend esté corriendo en el puerto esperado por `src/servicios/api.js`.

Notas sobre la API

- Revisa `frontend/src/servicios/api.js` para conocer la URL base y endpoints usados por la app. Si el backend corre en otro host/puerto, actualiza esa constante o usa variables de entorno.

## Scripts comunes (en `frontend/package.json`)

- `npm run dev` — iniciar servidor de desarrollo (Vite)
- `npm run build` — crear build de producción
- `npm run preview` — previsualizar build de producción

## Variables de entorno

Si necesitas configurar la URL del backend u otras variables, puedes usar un `.env` en la carpeta `frontend/` o pasar variables en el entorno. Por ejemplo en Vite usa `VITE_API_URL` y accede con `import.meta.env.VITE_API_URL`.

## Subir / montar al repositorio de GitHub

Este proyecto ya tiene un remoto objetivo: https://github.com/Freddy-UL/FreddyTraduce.git

Si aún no has clonado el repo, hazlo así (ejemplo):

1. Clonar remoto (si no lo tienes local):

   git clone https://github.com/Freddy-UL/FreddyTraduce.git
   cd FreddyTraduce

2. Si trabajas en una rama nueva:

   git checkout -b mi-rama

3. Añadir y commitear cambios (desde la raíz del proyecto o desde `frontend/`):

   git add frontend/README.md
   git commit -m "docs(frontend): actualizar README del frontend"

4. Empujar los cambios al remoto:

   git push origin mi-rama

5. Crear Pull Request en GitHub para mergear a `main` o la rama principal del repo.

Si ya has clonado y solo quieres actualizar el remoto origin para apuntar a la URL dada:

    git remote remove origin; git remote add origin https://github.com/Freddy-UL/FreddyTraduce.git

Y luego empuja:

    git push -u origin main

Recomendación: antes de empujar, haz `git pull --rebase origin main` para evitar conflictos.

## Buenas prácticas y recomendaciones

- Mantener separados los cambios de frontend y backend en commits claros.
- Documentar cambios importantes en el README o en el changelog.
- Probar la API localmente antes de dependender de un remote.

## Contribuciones

Si quieres contribuir:

1. Haz fork o crea una rama.
2. Implementa cambios con commits pequeños y descriptivos.
3. Abre un Pull Request describiendo los cambios y cómo probarlos.

## Licencia

Incluye aquí la licencia del proyecto (si aplica). Si no hay una especificada, considera añadir un archivo `LICENSE` en la raíz con la licencia elegida (MIT, Apache-2.0, etc.).

## Contacto

Para dudas sobre el proyecto contacta al mantenedor o abre un issue en GitHub: https://github.com/Freddy-UL/FreddyTraduce/issues

---

Archivo generado automáticamente: resumen y guía para trabajar con el frontend. Si quieres que incluya pasos concretos para Docker, CI/CD (GitHub Actions) o plantillas de .env, dímelo y los añado.
