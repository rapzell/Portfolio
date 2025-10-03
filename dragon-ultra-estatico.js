        // Dragón ULTRA-ESTÁTICO - Movimientos mínimos con interacción por hover
        class DragonUltraStatic {
            constructor() {
                console.log('🚀 Inicializando dragón ultra-estático...');
                this.dragon = document.getElementById('dragon');
                this.sections = ['inicio', 'sobre-mi', 'proyectos', 'habilidades', 'contacto'];
                this.interactiveElements = document.querySelectorAll('.interactive-element, .btn, .skill-card, .project-card, p, h1, h2, h3, span');
                this.textElements = document.querySelectorAll('p, h1, h2, h3, h4, h5, h6, span, a, button, .nav-link');
                this.currentTarget = null;
                this.isEnabled = true;
                this.evasionTimer = null;
                this.recentlyMoved = false;
                this.movementInterval = null;
                this.safePositions = [];

                if (this.dragon) {
                    this.init();
                } else {
                    console.error('❌ Dragón no encontrado');
                }
            }

            init() {
                console.log('✅ Dragón encontrado, inicializando...');

                // Eventos del tooltip - GARANTIZADO
                this.dragon.addEventListener('mouseenter', () => {
                    console.log('🖱️ Mouse sobre dragón - mostrando tooltip');
                    this.showTooltip();
                });

                this.dragon.addEventListener('mouseleave', () => {
                    console.log('👋 Mouse fuera del dragón - ocultando tooltip');
                    this.hideTooltip();
                });

                // Eventos de interacción
                this.dragon.addEventListener('click', () => {
                    console.log('🐲 Dragón clickeado - efectos de fuego');
                    this.dragon.classList.add('excited');
                    this.breatheFire();
                    setTimeout(() => {
                        this.dragon.classList.remove('excited');
                    }, 2000);
                });

                // Eventos hover en elementos interactivos - SOLO CUANDO EL CURSOR ESTÁ SOBRE ELLOS
                this.interactiveElements.forEach(element => {
                    element.addEventListener('mouseenter', () => {
                        if (this.isEnabled) {
                            this.currentTarget = element;
                            this.flyToElement(element);
                        }
                    });

                    element.addEventListener('mouseleave', () => {
                        if (this.currentTarget === element) {
                            this.currentTarget = null;
                            this.returnToResting();
                        }
                    });
                });

                // Sistema ultra-estático: solo 1 movimiento cada 60 segundos máximo
                this.updatePositions();
                this.generateSafePositions();
                this.startEvasionSystem();
                this.startUltraStaticMovement();

                console.log('🎯 Dragón ultra-estático listo');
            }

            showTooltip() {
                const tooltip = this.dragon.querySelector('.dragon-tooltip');
                if (tooltip) {
                    tooltip.classList.add('show');
                    tooltip.style.opacity = '1';
                    tooltip.style.transform = 'translateX(-50%) translateY(-5px)';
                }
            }

            hideTooltip() {
                const tooltip = this.dragon.querySelector('.dragon-tooltip');
                if (tooltip) {
                    tooltip.classList.remove('show');
                    tooltip.style.opacity = '0';
                    tooltip.style.transform = 'translateX(-50%) translateY(0px)';
                }
            }

            generateSafePositions() {
                this.safePositions = [];
                const viewportWidth = window.innerWidth;
                const viewportHeight = window.innerHeight;
                const dragonSize = 80;

                for (let x = dragonSize; x < viewportWidth - dragonSize; x += 100) {
                    for (let y = dragonSize; y < viewportHeight - dragonSize; y += 100) {
                        if (this.isPositionSafe(x, y)) {
                            this.safePositions.push({ x, y });
                        }
                    }
                }
            }

            isPositionSafe(x, y) {
                const dragonRect = {
                    left: x - 40,
                    right: x + 40,
                    top: y - 40,
                    bottom: y + 40
                };

                for (const element of this.textElements) {
                    const rect = element.getBoundingClientRect();
                    if (this.rectsOverlap(dragonRect, rect)) {
                        return false;
                    }
                }

                return true;
            }

            rectsOverlap(rect1, rect2) {
                return !(rect1.right < rect2.left ||
                        rect1.left > rect2.right ||
                        rect1.bottom < rect2.top ||
                        rect1.top > rect2.bottom);
            }

            startEvasionSystem() {
                setInterval(() => {
                    if (this.isEnabled && !this.currentTarget) {
                        const currentX = parseInt(this.dragon.style.left) || 50;
                        const currentY = parseInt(this.dragon.style.top) || 200;

                        if (!this.isPositionSafe(currentX, currentY)) {
                            this.evasionTimer = setTimeout(() => {
                                this.moveToSafePosition();
                            }, 1000);
                        } else {
                            if (this.evasionTimer) {
                                clearTimeout(this.evasionTimer);
                                this.evasionTimer = null;
                            }
                        }
                    }
                }, 500);
            }

            moveToSafePosition() {
                if (this.safePositions.length > 0) {
                    const randomSafePos = this.safePositions[Math.floor(Math.random() * this.safePositions.length)];
                    this.flyToPosition(randomSafePos);
                }
            }

            updatePositions() {
                this.positions = this.sections.map(sectionId => {
                    const element = document.getElementById(sectionId);
                    if (element) {
                        const rect = element.getBoundingClientRect();
                        return {
                            x: rect.left + rect.width / 2 - 40,
                            y: rect.top + window.scrollY + rect.height / 2 - 40
                        };
                    }
                    return { x: 0, y: 0 };
                });
            }

            // Sistema ultra-estático: SOLO 1 movimiento cada 60 segundos máximo
            startUltraStaticMovement() {
                this.movementInterval = setInterval(() => {
                    if (this.isEnabled && !this.currentTarget && !this.evasionTimer && !this.recentlyMoved) {
                        console.log('🚀 Movimiento automático del dragón (cada 60 segundos)');
                        this.patrolSections();
                        this.recentlyMoved = true;
                        // Resetear después de 60 segundos
                        setTimeout(() => {
                            this.recentlyMoved = false;
                        }, 60000);
                    }
                }, 60000);
            }

            patrolSections() {
                if (this.positions.length === 0) return;

                const currentIndex = this.sections.findIndex(section => {
                    const element = document.getElementById(section);
                    const rect = element.getBoundingClientRect();
                    const dragonRect = this.dragon.getBoundingClientRect();
                    return Math.abs(rect.top - dragonRect.top) < 100;
                });

                let nextIndex;
                if (currentIndex === -1) {
                    nextIndex = 0;
                } else {
                    nextIndex = (currentIndex + 1) % this.sections.length;
                }

                this.flyToPosition(this.positions[nextIndex]);
            }

            flyToElement(element) {
                const rect = element.getBoundingClientRect();
                let targetX = rect.left + rect.width / 2 - 40;
                let targetY = rect.top + window.scrollY + rect.height / 2 - 40;

                if (!this.isPositionSafe(targetX, targetY)) {
                    const safePos = this.findNearbySafePosition(targetX, targetY);
                    if (safePos) {
                        targetX = safePos.x;
                        targetY = safePos.y;
                    }
                }

                this.flyToPosition({ x: targetX, y: targetY });
                this.dragon.classList.add('happy');
            }

            findNearbySafePosition(targetX, targetY) {
                let bestPosition = null;
                let minDistance = Infinity;

                for (const pos of this.safePositions) {
                    const distance = Math.sqrt(
                        Math.pow(pos.x - targetX, 2) +
                        Math.pow(pos.y - targetY, 2)
                    );

                    if (distance < minDistance) {
                        minDistance = distance;
                        bestPosition = pos;
                    }
                }

                return bestPosition;
            }

            flyToPosition(position) {
                if (!this.isPositionSafe(position.x, position.y)) {
                    const safePos = this.findNearbySafePosition(position.x, position.y);
                    if (safePos) {
                        position = safePos;
                    }
                }

                this.dragon.style.left = position.x + 'px';
                this.dragon.style.top = position.y + 'px';

                this.dragon.classList.remove('resting');
                this.dragon.classList.add('flying');

                setTimeout(() => {
                    if (!this.currentTarget) {
                        this.dragon.classList.remove('flying');
                        this.dragon.classList.add('resting');
                    }
                }, 2000);
            }

            returnToResting() {
                this.dragon.classList.remove('happy');
                setTimeout(() => {
                    if (!this.currentTarget) {
                        this.dragon.classList.remove('flying');
                        this.dragon.classList.add('resting');
                    }
                }, 1000);
            }

            breatheFire() {
                for (let i = 0; i < 8; i++) {
                    setTimeout(() => {
                        this.createFireParticle();
                    }, i * 100);
                }
            }

            createFireParticle() {
                const particle = document.createElement('div');
                particle.style.position = 'absolute';
                particle.style.width = '6px';
                particle.style.height = '6px';
                particle.style.background = 'linear-gradient(45deg, #5996C2, #7C3AED)';
                particle.style.borderRadius = '50%';
                particle.style.left = Math.random() * 80 + 'px';
                particle.style.bottom = '10px';
                particle.style.animation = 'fireFloat 1.2s ease-out forwards';
                particle.style.pointerEvents = 'none';

                this.dragon.appendChild(particle);

                setTimeout(() => {
                    particle.remove();
                }, 1200);
            }
        }
