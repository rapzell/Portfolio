import React, { useRef } from 'react';
import { motion } from 'framer-motion';
import './AdvancedDemo.css';

const AdvancedDemo: React.FC = () => {
  const demoRef = useRef<HTMLElement>(null);

  return (
    <div className="advanced-demo" ref={demoRef}>
      <motion.div
        className="container"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ duration: 0.8 }}
      >
        <motion.h1
          className="demo-title"
          initial={{ opacity: 0, y: -50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8, delay: 0.2 }}
        >
          🚀 Técnicas Avanzadas de React
        </motion.h1>

        <motion.div
          className="demo-content"
          initial={{ opacity: 0, y: 50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8, delay: 0.4 }}
        >
          <div className="feature-grid">
            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05, rotateY: 5 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>🎭 Framer Motion</h3>
              <p>Animaciones avanzadas con variants, orchestration y gestos</p>
              <div className="code-snippet">
                <code>{`motion.div
  variants={variants}
  whileHover={{ scale: 1.05 }}
  whileTap={{ scale: 0.95 }}`}</code>
              </div>
            </motion.div>

            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05, rotateY: -5 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>🎯 Intersection Observer</h3>
              <p>Detección inteligente de elementos visibles para triggers</p>
              <div className="code-snippet">
                <code>{`useEffect(() => {
  const observer = new IntersectionObserver(...)
  return () => observer.disconnect()
}, [])`}</code>
              </div>
            </motion.div>

            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>🌀 Portals</h3>
              <p>Renderizado fuera del flujo normal del DOM</p>
              <div className="code-snippet">
                <code>{`createPortal(
  <motion.div>...</motion.div>,
  document.body
)`}</code>
              </div>
            </motion.div>

            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05, rotateX: 5 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>📐 Custom Hooks</h3>
              <p>Lógica reutilizable para posiciones dinámicas</p>
              <div className="code-snippet">
                <code>{`const { positions, currentSection } =
  useSectionPositions(sectionRefs)`}</code>
              </div>
            </motion.div>

            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>🎪 AnimatePresence</h3>
              <p>Control preciso de entradas y salidas animadas</p>
              <div className="code-snippet">
                <code>{`<AnimatePresence>
  {isVisible && <motion.div />}
</AnimatePresence>`}</code>
              </div>
            </motion.div>

            <motion.div
              className="feature-card"
              whileHover={{ scale: 1.05, rotateZ: 2 }}
              transition={{ type: "spring", stiffness: 300 }}
            >
              <h3>⚡ useAnimate Hook</h3>
              <p>Control imperativo de animaciones</p>
              <div className="code-snippet">
                <code>{`const [scope, animate] = useAnimate()
await animate(scope.current, { x, y })`}</code>
              </div>
            </motion.div>
          </div>

          <motion.div
            className="demo-section"
            initial={{ opacity: 0, scale: 0.8 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.8, delay: 0.6 }}
          >
            <h2>🎬 Ejemplo en Acción</h2>
            <p>
              Mira cómo el conejo animado utiliza todas estas técnicas avanzadas:
              posiciones dinámicas calculadas en tiempo real, Intersection Observer
              para detectar secciones visibles, Portals para libertad de movimiento,
              y animaciones coordinadas con Framer Motion.
            </p>

            <div className="tech-stack">
              <motion.span
                className="tech-badge"
                whileHover={{ scale: 1.1 }}
                whileTap={{ scale: 0.9 }}
              >
                React 18
              </motion.span>
              <motion.span
                className="tech-badge"
                whileHover={{ scale: 1.1 }}
                whileTap={{ scale: 0.9 }}
              >
                TypeScript
              </motion.span>
              <motion.span
                className="tech-badge"
                whileHover={{ scale: 1.1 }}
                whileTap={{ scale: 0.9 }}
              >
                Framer Motion
              </motion.span>
              <motion.span
                className="tech-badge"
                whileHover={{ scale: 1.1 }}
                whileTap={{ scale: 0.9 }}
              >
                Advanced Hooks
              </motion.span>
            </div>
          </motion.div>

          <motion.div
            className="cta-section"
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.8, delay: 0.8 }}
          >
            <h3>💡 ¿Quieres ver más técnicas avanzadas?</h3>
            <p>
              Esta implementación demuestra solo algunas de las capacidades avanzadas
              disponibles en React moderno. Cada técnica puede ser extendida y
              personalizada según las necesidades específicas de tu proyecto.
            </p>
            <motion.button
              className="cta-button"
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
              onClick={() => window.scrollTo({ top: 0, behavior: 'smooth' })}
            >
              ← Volver al Portfolio Principal
            </motion.button>
          </motion.div>
        </motion.div>
      </motion.div>
    </div>
  );
};

export default AdvancedDemo;
