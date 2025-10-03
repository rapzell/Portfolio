import React, { useRef, useState, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Header from './components/Header';
import Home from './components/Home';
import About from './components/About';
import Projects from './components/Projects';
import Skills from './components/Skills';

function App() {
  // Refs para las secciones principales
  const homeRef = useRef<HTMLElement>(null);
  const aboutRef = useRef<HTMLElement>(null);
  const projectsRef = useRef<HTMLElement>(null);
  const skillsRef = useRef<HTMLElement>(null);
  const contactRef = useRef<HTMLElement>(null);

  // Estado para controlar la animación del animalito
  const [isAnimalitoEnabled, setIsAnimalitoEnabled] = useState(true);

  // Hook personalizado para obtener posiciones de secciones
  const { positions, currentSection } = useSectionPositions([
    homeRef,
    aboutRef,
    projectsRef,
    skillsRef,
    contactRef
  ]);

  // Intersection Observer para triggers avanzados de scroll
  useEffect(() => {
    const observerOptions = {
      threshold: 0.3,
      rootMargin: '-50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          // Aquí puedes añadir lógica adicional para triggers específicos
          // por ejemplo, cambiar comportamientos del animalito según la sección
        }
      });
    }, observerOptions);

    // Observar las secciones
    [homeRef, aboutRef, projectsRef, skillsRef, contactRef].forEach((ref) => {
      if (ref.current) {
        observer.observe(ref.current);
      }
    });

    return () => observer.disconnect();
  }, []);

  // Función para hacer saltar al animalito manualmente (para testing)
  const triggerJump = () => {
    // Puedes implementar lógica adicional aquí
  };

  return (
    <Router>
      <div className="App">
        <Header />

        {/* Secciones con refs para el animalito */}
        <div ref={homeRef}>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About aboutRef={aboutRef} />} />
            <Route path="/projects" element={<Projects projectsRef={projectsRef} />} />
            <Route path="/skills" element={<Skills skillsRef={skillsRef} />} />
            <Route path="/contact" element={<Contact contactRef={contactRef} />} />
          </Routes>
        </div>

        {/* Animalito avanzado con técnicas profesionales */}
        <Animalito
          positions={positions}
          isEnabled={isAnimalitoEnabled}
          currentSection={currentSection}
        />

        {/* Toggle para activar/desactivar la animación (opcional) */}
        <button
          onClick={() => setIsAnimalitoEnabled(!isAnimalitoEnabled)}
          style={{
            position: 'fixed',
            bottom: '20px',
            right: '20px',
            zIndex: 10000,
            padding: '10px 15px',
            background: 'rgba(89, 150, 194, 0.9)',
            color: 'white',
            border: 'none',
            borderRadius: '25px',
            cursor: 'pointer',
            fontSize: '12px',
            backdropFilter: 'blur(10px)',
            transition: 'all 0.3s ease'
          }}
          title="Toggle Animalito Animation"
        >
          {isAnimalitoEnabled ? '🐰 ON' : '🐰 OFF'}
        </button>
      </div>
    </Router>
  );
}

export default App;
