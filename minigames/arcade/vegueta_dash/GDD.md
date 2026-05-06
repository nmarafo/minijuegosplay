# Documento de Diseño Conceptual (GDD): Vegueta Dash - El Enigma de Colón

## 1. Visión General
- **Título**: Vegueta Dash: El Enigma de Colón
- **Género**: Arcade / Side-scroller Runner
- **Plataforma**: Web (HTML5)
- **Estilo Artístico**: Cartoon (Vibrante y amigable)
- **Ambientación**: Barrio histórico de Vegueta, Las Palmas de Gran Canaria.

## 2. Concepto y Jugabilidad
El jugador controla a un joven explorador canario que debe recuperar objetos históricos perdidos por las calles empedradas de Vegueta antes de que termine el Día de Canarias.

### Mecánicas:
- **Salto**: Para esquivar palomas y puestos de flores.
- **Recolección**: Papas arrugadas (puntos) y Pergaminos de Colón (objetivo).
- **Power-ups**: Mojo Picón (impulso de velocidad) y Queso de Flor (escudo).

## 3. Guion y Curva Emocional (6 Fases)
1. **El Inicio**: Mañana soleada en la Plaza de Santa Ana. Ambiente festivo y relajado. El jugador comienza su carrera.
2. **El Incidente Incitador**: Un travieso perro presa canario (en versión cartoon) arrebata un mapa histórico. ¡Hay que recuperarlo!
3. **El Viaje**: Carrera por las calles estrechas y balcones canarios. La velocidad aumenta y aparecen más obstáculos (turistas distraídos, carros de comida).
4. **El Punto Bajo**: El explorador entra en un callejón oscuro y estrecho. La música se vuelve tensa y la visibilidad disminuye. Parece que ha perdido el rastro.
5. **El Clímax**: Salida triunfal hacia la Casa de Colón. Gran persecución final saltando entre puestos de artesanía bajo fuegos artificiales.
6. **La Resolución**: Recuperación del mapa frente a la Catedral. Celebración con música de timple y baile típico. ¡Misión cumplida!

## 4. Parámetros por Fase
- **Fase 1-2**: Iluminación de mañana clara. Música alegre (timple y chácaras). Ritmo moderado.
- **Fase 3-4**: Iluminación de atardecer, sombras largas. Música rítmica rápida. Ritmo frenético.
- **Fase 5-6**: Iluminación nocturna con luces de fiesta y fuegos artificiales. Música épica folclórica.

## 5. Listado Exhaustivo de Assets
### Tilesets (`assets/tilesets/`)
- Muros de piedra volcánica y balcones de madera tallada.
- Suelo de adoquines típicos de Vegueta.
- Elementos decorativos: Farolas antiguas, puestos de flores, campanas de la catedral.

### Spritesheets (`assets/spritesheets/`)
- **Explorador (Protagonista)**: Joven con mochila, pañuelo canario y ropa de aventura.
    - Animaciones: Idle, Run, Jump, Slide, Victory, Hurt.
- **Perro Presa (Oponente)**: Versión cartoon amigable pero rápida.
    - Animaciones: Run, Bark, Jump, Hide.
- **Paloma de Vegueta (Enemigo/Obstáculo)**: Vuelo errático.
    - Animaciones: Fly, Peal, Flap.

### UI y VFX (`assets/ui/`)
- Barra de progreso (Icono de explorador moviéndose hacia la catedral).
- Contador de papas arrugadas.
- Efecto visual de "Mojo Picón" (estela de fuego roja).

## 6. Verificación de Diseño
- [x] Curva emocional de 6 fases.
- [x] Detalle de parámetros por fase.
- [x] Listado de assets (Protagonista + Oponente + Enemigo).
