import React from 'react';
import { motion } from 'framer-motion';
import './Skills.css';

interface Skill {
  name: string;
  level: number;
  icon: string;
}

const Skills: React.FC = () => {
  const skills: Skill[] = [
    { name: "React", level: 90, icon: "⚛️" },
    { name: "TypeScript", level: 85, icon: "📘" },
    { name: "JavaScript", level: 95, icon: "🟨" },
    { name: "HTML5", level: 95, icon: "🌐" },
    { name: "CSS3", level: 90, icon: "🎨" },
    { name: "Node.js", level: 80, icon: "🟢" },
    { name: "Express", level: 75, icon: "🚂" },
    { name: "MongoDB", level: 70, icon: "🍃" },
    { name: "PostgreSQL", level: 75, icon: "🐘" },
    { name: "Git", level: 85, icon: "📝" },
    { name: "Docker", level: 65, icon: "🐳" },
    { name: "AWS", level: 60, icon: "☁️" }
  ];

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1
      }
    }
  };

  const skillVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: { opacity: 1, y: 0 }
  };

  return (
    <div className="skills">
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
          Habilidades Técnicas
        </motion.h2>
        
        <motion.div 
          className="skills-grid"
          variants={containerVariants}
          initial="hidden"
          animate="visible"
        >
          {skills.map((skill, index) => (
            <motion.div 
              key={index}
              className="skill-card"
              variants={skillVariants}
              transition={{ duration: 0.5 }}
              whileHover={{ scale: 1.05 }}
            >
              <div className="skill-icon">
                <span>{skill.icon}</span>
              </div>
              
              <div className="skill-info">
                <h3 className="skill-name">{skill.name}</h3>
                <div className="skill-bar">
                  <motion.div 
                    className="skill-progress"
                    initial={{ width: 0 }}
                    animate={{ width: `${skill.level}%` }}
                    transition={{ duration: 1, delay: 0.3 + (index * 0.1) }}
                  ></motion.div>
                </div>
                <span className="skill-percentage">{skill.level}%</span>
              </div>
            </motion.div>
          ))}
        </motion.div>
        
        <motion.div 
          className="skills-summary"
          initial={{ opacity: 0, y: 30 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8, delay: 1 }}
        >
          <h3>Aprendizaje Continuo</h3>
          <p>
            Siempre estoy aprendiendo nuevas tecnologías y mejorando mis habilidades. 
            Actualmente estoy explorando GraphQL, Next.js y arquitecturas serverless.
          </p>
        </motion.div>
      </motion.div>
    </div>
  );
};

export default Skills;
