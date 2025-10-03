import React, { useRef, useEffect } from 'react';
import { motion, useAnimate, AnimatePresence } from 'framer-motion';
import { createPortal } from 'react-dom';

interface Position {
  x: number;
  y: number;
}

interface AnimalitoProps {
  positions: Position[];
  isEnabled?: boolean;
  currentSection?: number;
}

const Animalito: React.FC<AnimalitoProps> = ({
  positions,
  isEnabled = true,
  currentSection = 0
}) => {
  const [scope, animate] = useAnimate();
  const ref = useRef<HTMLDivElement>(null);
  const [isVisible, setIsVisible] = React.useState(false);

  // Variants para diferentes estados de animación
  const variants = {
    hidden: {
      opacity: 0,
      scale: 0,
      rotate: -180
    },
    visible: {
      opacity: 1,
      scale: 1,
      rotate: 0,
      transition: {
        type: "spring",
        stiffness: 260,
        damping: 20
      }
    },
    idle: {
      y: [0, -5, 0],
      transition: {
        duration: 2,
        repeat: Infinity,
        ease: "easeInOut"
      }
    },
    jump: {
      y: [0, -100, 0],
      x: [0, 50, 0],
      rotate: [0, 360, 720],
      transition: {
        duration: 1,
        type: "spring",
        stiffness: 300,
        damping: 15
      }
    },
    bounce: {
      y: [0, -30, 0],
      transition: {
        duration: 0.5,
        type: "spring",
        stiffness: 400
      }
    }
  };

  // Función para animar salto entre posiciones
  const jumpToPosition = async (targetIndex: number) => {
    if (targetIndex >= positions.length || !isEnabled) return;

    const { x, y } = positions[targetIndex];

    // Animación de salto con rotación
    await animate(scope.current, {
      x: x - 25, // Centrado en el animalito (50px width / 2)
      y: y - 25, // Centrado en el animalito (50px height / 2)
      rotate: [0, 360, 720],
      scale: [1, 1.2, 1]
    }, {
      duration: 1.2,
      type: "spring",
      stiffness: 200,
      damping: 12
    });

    // Pequeño rebote al llegar
    await animate(scope.current, variants.bounce, { delay: 0.1 });
  };

  // Efecto para manejar cambios de sección
  useEffect(() => {
    if (isEnabled && positions.length > 0) {
      jumpToPosition(currentSection);
    }
  }, [currentSection, positions, isEnabled]);

  // Efecto para animación idle inicial
  useEffect(() => {
    if (isEnabled && positions.length > 0) {
      const timer = setTimeout(() => {
        setIsVisible(true);
      }, 1000);

      return () => clearTimeout(timer);
    }
  }, [isEnabled, positions]);

  // Portal para renderizar fuera del flujo normal
  return createPortal(
    <AnimatePresence>
      {isVisible && isEnabled && (
        <motion.div
          ref={scope}
          initial="hidden"
          animate="visible"
          exit="hidden"
          variants={variants}
          whileHover={{ scale: 1.1 }}
          whileTap={{ scale: 0.9 }}
          style={{
            position: 'fixed',
            zIndex: 9999,
            pointerEvents: 'none',
            width: 50,
            height: 50,
            cursor: 'pointer'
          }}
          className="animalito-container"
        >
          {/* Animalito SVG personalizado */}
          <svg
            width="50"
            height="50"
            viewBox="0 0 50 50"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            {/* Cuerpo del conejo */}
            <ellipse
              cx="25"
              cy="35"
              rx="15"
              ry="10"
              fill="url(#bunnyGradient)"
            />
            {/* Cabeza */}
            <circle
              cx="25"
              cy="20"
              r="12"
              fill="url(#bunnyGradient)"
            />
            {/* Orejas */}
            <ellipse
              cx="18"
              cy="12"
              rx="4"
              ry="8"
              fill="url(#bunnyGradient)"
              transform="rotate(-20 18 12)"
            />
            <ellipse
              cx="32"
              cy="12"
              rx="4"
              ry="8"
              fill="url(#bunnyGradient)"
              transform="rotate(20 32 12)"
            />
            {/* Orejas internas */}
            <ellipse
              cx="18"
              cy="12"
              rx="2"
              ry="5"
              fill="#ffcccc"
              transform="rotate(-20 18 12)"
            />
            <ellipse
              cx="32"
              cy="12"
              rx="2"
              ry="5"
              fill="#ffcccc"
              transform="rotate(20 32 12)"
            />
            {/* Ojos */}
            <circle cx="21" cy="18" r="2" fill="#333" />
            <circle cx="29" cy="18" r="2" fill="#333" />
            {/* Pupilas brillantes */}
            <circle cx="22" cy="17" r="0.8" fill="#fff" />
            <circle cx="30" cy="17" r="0.8" fill="#fff" />
            {/* Nariz */}
            <ellipse cx="25" cy="22" rx="1.5" ry="1" fill="#ff9999" />
            {/* Boca */}
            <path d="M 23 24 Q 25 26 27 24" stroke="#333" strokeWidth="1" fill="none" />
            {/* Patas */}
            <ellipse cx="20" cy="42" rx="3" ry="2" fill="url(#bunnyGradient)" />
            <ellipse cx="30" cy="42" rx="3" ry="2" fill="url(#bunnyGradient)" />
            {/* Cola */}
            <circle cx="35" cy="32" r="3" fill="url(#bunnyGradient)" />

            {/* Gradiente para el conejo */}
            <defs>
              <linearGradient id="bunnyGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                <stop offset="0%" style={{ stopColor: '#FFE4E1' }} />
                <stop offset="50%" style={{ stopColor: '#FFC0CB' }} />
                <stop offset="100%" style={{ stopColor: '#FF69B4' }} />
              </linearGradient>
            </defs>
          </svg>

          {/* Partículas de salto (opcional) */}
          <motion.div
            className="jump-particles"
            style={{
              position: 'absolute',
              top: '-10px',
              left: '50%',
              transform: 'translateX(-50%)'
            }}
          >
            {[...Array(3)].map((_, i) => (
              <motion.div
                key={i}
                style={{
                  width: '4px',
                  height: '4px',
                  background: '#FFD700',
                  borderRadius: '50%',
                  position: 'absolute'
                }}
                animate={{
                  y: [0, -20, -40],
                  opacity: [1, 0.8, 0],
                  scale: [1, 0.5, 0]
                }}
                transition={{
                  duration: 0.8,
                  delay: i * 0.1,
                  repeat: Infinity
                }}
              />
            ))}
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>,
    document.body
  );
};

export default Animalito;
