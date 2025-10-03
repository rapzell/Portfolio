import React from 'react';
import { motion } from 'framer-motion';
import './Projects.css';

interface Project {
  id: number;
  title: string;
  description: string;
  technologies: string[];
  githubUrl?: string;
  demoUrl?: string;
  image: string;
}

interface ProjectsProps {
  projectsRef?: React.RefObject<HTMLElement>;
}

const Projects: React.FC<ProjectsProps> = ({ projectsRef }) => {
  const projects: Project[] = [
    {
      id: 1,
      title: "E-commerce Platform",
      description: "Plataforma de comercio electrónico completa con carrito de compras, gestión de productos y procesamiento de pagos.",
      technologies: ["React", "TypeScript", "Node.js", "MongoDB"],
      githubUrl: "https://github.com",
      demoUrl: "https://demo.com",
      image: "🛒"
    },
    {
      id: 2,
      title: "Task Management App",
      description: "Aplicación de gestión de tareas colaborativa con tiempo real, asignación de tareas y seguimiento de progreso.",
      technologies: ["React", "Socket.io", "Express", "PostgreSQL"],
      githubUrl: "https://github.com",
      demoUrl: "https://demo.com",
      image: "✅"
    },
    {
      id: 3,
      title: "Weather Dashboard",
      description: "Dashboard del clima con pronósticos, mapas interactivos y datos históricos utilizando APIs externas.",
      technologies: ["React", "Chart.js", "OpenWeather API"],
      githubUrl: "https://github.com",
      demoUrl: "https://demo.com",
      image: "🌤️"
    }
  ];

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.3
      }
    }
  };

  const projectVariants = {
    hidden: { opacity: 0, y: 50 },
    visible: { opacity: 1, y: 0 }
  };

  return (
    <div className="projects" ref={projectsRef}>
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
          Mis Proyectos
        </motion.h2>
        
        <motion.div 
          className="projects-grid"
          variants={containerVariants}
          initial="hidden"
          animate="visible"
        >
          {projects.map((project) => (
            <motion.div 
              key={project.id}
              className="project-card"
              variants={projectVariants}
              transition={{ duration: 0.6 }}
              whileHover={{ y: -10 }}
            >
              <div className="project-image">
                <div className="image-placeholder">
                  <span>{project.image}</span>
                </div>
              </div>
              
              <div className="project-content">
                <h3 className="project-title">{project.title}</h3>
                <p className="project-description">{project.description}</p>
                
                <div className="project-technologies">
                  {project.technologies.map((tech, index) => (
                    <span key={index} className="tech-tag">
                      {tech}
                    </span>
                  ))}
                </div>
                
                <div className="project-links">
                  {project.githubUrl && (
                    <a 
                      href={project.githubUrl} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="btn btn-secondary"
                    >
                      Código
                    </a>
                  )}
                  {project.demoUrl && (
                    <a 
                      href={project.demoUrl} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="btn btn-primary"
                    >
                      Demo
                    </a>
                  )}
                </div>
              </div>
            </motion.div>
          ))}
        </motion.div>
      </motion.div>
    </div>
  );
};

export default Projects;
