import React from 'react';
import { motion } from 'framer-motion';
import './About.css';

interface AboutProps {
  aboutRef?: React.RefObject<HTMLElement>;
}

const About: React.FC<AboutProps> = ({ aboutRef }) => {
  return (
    <div className="about" ref={aboutRef}>
      <motion.div
        className="container"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ duration: 0.8 }}
      >
        <motion.h2
          className="section-title"
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8, delay: 0.2 }}
        >
          Sobre Mí
        </motion.h2>

        <div className="about-content">
          <motion.div
            className="about-text"
            initial={{ opacity: 0, x: -50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.8, delay: 0.4 }}
          >
            <p className="about-intro">
              Soy un desarrollador web apasionado con experiencia en la creación de aplicaciones web modernas y responsivas.
              Mi enfoque se centra en React y las tecnologías del ecosistema JavaScript para construir experiencias de usuario excepcionales.
            </p>

            <p>
              Durante mi trayectoria, he trabajado en diversos proyectos que me han permitido desarrollar habilidades sólidas en:
            </p>

            <ul className="skills-list">
              <li>Desarrollo frontend con React, TypeScript y CSS moderno</li>
              <li>Creación de interfaces de usuario responsivas y accesibles</li>
              <li>Integración con APIs RESTful y GraphQL</li>
              <li>Gestión de estado con Redux y Context API</li>
              <li>Optimización de rendimiento y SEO</li>
            </ul>

            <p>
              Cuando no estoy programando, me gusta explorar nuevas tecnologías, contribuir a proyectos open source y compartir conocimientos con la comunidad de desarrolladores.
            </p>

            <div className="about-download">
              <a href="/cv.pdf" className="btn btn-primary" download>
                Descargar CV
              </a>
            </div>
          </motion.div>

          <motion.div
            className="about-image"
            initial={{ opacity: 0, x: 50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.8, delay: 0.6 }}
          >
            <div className="image-placeholder">
              <span>🚀</span>
            </div>
          </motion.div>
        </div>
      </motion.div>
    </div>
  );
};

export default About;
