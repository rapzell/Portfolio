import { useState, useEffect, RefObject } from 'react';

export interface Position {
  x: number;
  y: number;
  sectionId?: string;
}

export const useSectionPositions = (sectionRefs: RefObject<HTMLElement>[]) => {
  const [positions, setPositions] = useState<Position[]>([]);
  const [currentSection, setCurrentSection] = useState(0);

  useEffect(() => {
    const updatePositions = () => {
      const newPositions = sectionRefs.map((ref, index) => {
        if (ref.current) {
          const rect = ref.current.getBoundingClientRect();
          const scrollY = window.scrollY || window.pageYOffset;

          return {
            x: rect.left + rect.width / 2 - 25, // Centro ajustado para el animalito (50px width / 2)
            y: rect.top + scrollY + rect.height / 2 - 25, // Centro ajustado para el animalito (50px height / 2)
            sectionId: ref.current.id || `section-${index}`
          };
        }
        return { x: 0, y: 0, sectionId: `section-${index}` };
      });

      setPositions(newPositions);
    };

    // Actualizar posiciones inicialmente
    updatePositions();

    // Actualizar posiciones en resize y scroll
    const handleResize = () => updatePositions();
    const handleScroll = () => {
      updatePositions();

      // Detectar sección actual basada en scroll
      const scrollPosition = window.scrollY + window.innerHeight / 2;

      sectionRefs.forEach((ref, index) => {
        if (ref.current) {
          const rect = ref.current.getBoundingClientRect();
          const elementTop = rect.top + window.scrollY;
          const elementBottom = elementTop + rect.height;

          if (scrollPosition >= elementTop && scrollPosition <= elementBottom) {
            setCurrentSection(index);
          }
        }
      });
    };

    window.addEventListener('resize', handleResize);
    window.addEventListener('scroll', handleScroll, { passive: true });

    // Cleanup
    return () => {
      window.removeEventListener('resize', handleResize);
      window.removeEventListener('scroll', handleScroll);
    };
  }, [sectionRefs]);

  return { positions, currentSection };
};
