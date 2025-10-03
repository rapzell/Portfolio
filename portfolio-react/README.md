# Portfolio React

Un portfolio profesional creado con React, TypeScript y animaciones modernas.

## Características

- ✅ Diseño responsive y moderno
- ✅ Navegación suave con React Router
- ✅ Animaciones con Framer Motion
- ✅ Formulario de contacto con EmailJS
- ✅ Optimizado para SEO
- ✅ Listo para despliegue en Netlify/Vercel

## Instalación

1. Clona el repositorio:
```bash
git clone <url-del-repositorio>
cd portfolio-react
```

2. Instala las dependencias:
```bash
npm install
```

3. Inicia el servidor de desarrollo:
```bash
npm start
```

La aplicación estará disponible en `http://localhost:3000`.

## Configuración de EmailJS

Para que el formulario de contacto funcione, necesitas configurar EmailJS:

1. Crea una cuenta en [EmailJS](https://www.emailjs.com/)
2. Crea un nuevo servicio de email
3. Crea una plantilla de email
4. Actualiza los valores en `src/components/Contact.tsx`:
   - `YOUR_SERVICE_ID` con tu Service ID
   - `YOUR_TEMPLATE_ID` con tu Template ID
   - `YOUR_USER_ID` con tu User ID

## Despliegue

### Netlify (Recomendado)

1. Crea una cuenta en [Netlify](https://netlify.com/)
2. Conecta tu repositorio de GitHub
3. Configuración automática:
   - Build command: `npm run build`
   - Publish directory: `build`

### Vercel

1. Crea una cuenta en [Vercel](https://vercel.com/)
2. Conecta tu repositorio de GitHub
3. Despliegue automático

## Tecnologías Utilizadas

- **React 18** - Biblioteca de UI
- **TypeScript** - Tipado estático
- **React Router** - Navegación
- **Framer Motion** - Animaciones
- **EmailJS** - Envío de emails
- **CSS3** - Estilos modernos

## Estructura del Proyecto

```
src/
├── components/
│   ├── Header.tsx      # Navegación principal
│   ├── Home.tsx        # Página de inicio
│   ├── About.tsx       # Sobre mí
│   ├── Projects.tsx    # Proyectos
│   ├── Skills.tsx      # Habilidades
│   └── Contact.tsx     # Formulario de contacto
├── App.tsx             # Componente principal
├── index.tsx           # Punto de entrada
└── index.css           # Estilos globales
```

## Personalización

- Edita la información personal en cada componente
- Modifica los colores en los archivos CSS
- Agrega tus proyectos en `src/components/Projects.tsx`
- Actualiza las habilidades en `src/components/Skills.tsx`

## Licencia

MIT License - siéntete libre de usar este proyecto como base para tu propio portfolio.
