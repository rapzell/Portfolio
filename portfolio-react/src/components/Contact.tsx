import React, { useState } from 'react';
import { motion } from 'framer-motion';
import emailjs from 'emailjs-com';
import './Contact.css';

const Contact: React.FC = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  });
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitMessage, setSubmitMessage] = useState('');

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    setSubmitMessage('');

    try {
      // Configuración de EmailJS (necesitarás configurar esto)
      const templateParams = {
        from_name: formData.name,
        from_email: formData.email,
        message: formData.message,
        to_name: 'David',
      };

      await emailjs.send(
        'YOUR_SERVICE_ID', // Reemplaza con tu Service ID de EmailJS
        'YOUR_TEMPLATE_ID', // Reemplaza con tu Template ID de EmailJS
        templateParams,
        'YOUR_USER_ID' // Reemplaza con tu User ID de EmailJS
      );

      setSubmitMessage('Mensaje enviado correctamente!');
      setFormData({ name: '', email: '', message: '' });
    } catch (error) {
      setSubmitMessage('Error al enviar el mensaje. Por favor, inténtalo de nuevo.');
      console.error('Error:', error);
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="contact">
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
          Contacto
        </motion.h2>
        
        <div className="contact-content">
          <motion.div 
            className="contact-info"
            initial={{ opacity: 0, x: -50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.8, delay: 0.4 }}
          >
            <h3>Hablemos</h3>
            <p>
              ¿Tienes un proyecto en mente o quieres colaborar? 
              Me encantaría escuchar de ti y discutir cómo podemos trabajar juntos.
            </p>
            
            <div className="contact-details">
              <div className="contact-item">
                <span className="contact-icon">📧</span>
                <span>david@email.com</span>
              </div>
              <div className="contact-item">
                <span className="contact-icon">📱</span>
                <span>+34 123 456 789</span>
              </div>
              <div className="contact-item">
                <span className="contact-icon">📍</span>
                <span>Madrid, España</span>
              </div>
            </div>
            
            <div className="social-links">
              <a href="https://github.com" target="_blank" rel="noopener noreferrer">
                <span>GitHub</span>
              </a>
              <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer">
                <span>LinkedIn</span>
              </a>
              <a href="https://twitter.com" target="_blank" rel="noopener noreferrer">
                <span>Twitter</span>
              </a>
            </div>
          </motion.div>
          
          <motion.div 
            className="contact-form-container"
            initial={{ opacity: 0, x: 50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.8, delay: 0.6 }}
          >
            <form className="contact-form" onSubmit={handleSubmit}>
              <div className="form-group">
                <label htmlFor="name">Nombre</label>
                <input
                  type="text"
                  id="name"
                  name="name"
                  value={formData.name}
                  onChange={handleChange}
                  required
                />
              </div>
              
              <div className="form-group">
                <label htmlFor="email">Email</label>
                <input
                  type="email"
                  id="email"
                  name="email"
                  value={formData.email}
                  onChange={handleChange}
                  required
                />
              </div>
              
              <div className="form-group">
                <label htmlFor="message">Mensaje</label>
                <textarea
                  id="message"
                  name="message"
                  value={formData.message}
                  onChange={handleChange}
                  rows={5}
                  required
                ></textarea>
              </div>
              
              <button 
                type="submit" 
                className="btn btn-primary"
                disabled={isSubmitting}
              >
                {isSubmitting ? 'Enviando...' : 'Enviar Mensaje'}
              </button>
              
              {submitMessage && (
                <p className={`submit-message ${submitMessage.includes('Error') ? 'error' : 'success'}`}>
                  {submitMessage}
                </p>
              )}
            </form>
          </motion.div>
        </div>
      </motion.div>
    </div>
  );
};

export default Contact;
