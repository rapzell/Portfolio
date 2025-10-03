import React, { useState } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { motion } from 'framer-motion';
import './Header.css';

const Header: React.FC = () => {
  const [isOpen, setIsOpen] = useState(false);
  const location = useLocation();

  const toggleMenu = () => {
    setIsOpen(!isOpen);
  };

  const closeMenu = () => {
    setIsOpen(false);
  };

  return (
    <header className="header">
      <nav className="navbar">
        <div className="nav-brand">
          <Link to="/" onClick={closeMenu}>
            <span className="brand-text">Portfolio</span>
          </Link>
        </div>

        <div className={`nav-menu ${isOpen ? 'active' : ''}`}>
          <Link 
            to="/" 
            className={location.pathname === '/' ? 'nav-link active' : 'nav-link'}
            onClick={closeMenu}
          >
            Inicio
          </Link>
          <Link 
            to="/about" 
            className={location.pathname === '/about' ? 'nav-link active' : 'nav-link'}
            onClick={closeMenu}
          >
            Sobre Mí
          </Link>
          <Link 
            to="/projects" 
            className={location.pathname === '/projects' ? 'nav-link active' : 'nav-link'}
            onClick={closeMenu}
          >
            Proyectos
          </Link>
          <Link 
            to="/skills" 
            className={location.pathname === '/skills' ? 'nav-link active' : 'nav-link'}
            onClick={closeMenu}
          >
            Habilidades
          </Link>
          <Link 
            to="/contact" 
            className={location.pathname === '/contact' ? 'nav-link active' : 'nav-link'}
            onClick={closeMenu}
          >
            Contacto
          </Link>
        </div>

        <div className="hamburger" onClick={toggleMenu}>
          <span></span>
          <span></span>
          <span></span>
        </div>
      </nav>
    </header>
  );
};

export default Header;
