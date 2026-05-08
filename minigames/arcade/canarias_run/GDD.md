# Game Design Document: Canarias Run (Especial Día de Canarias)

## 1. Visión General
- **Título**: Canarias Run: El Gran Paseo de Las Palmas
- **Género**: Arcade (Endless/Level-based Runner)
- **Estilo Artístico**: Cartoon Vibrante y Colorido
- **Plataforma**: Web (MinijuegosPlay)
- **Temática**: Celebración del Día de Canarias en Las Palmas de Gran Canaria.

## 2. Guion y Curva Emocional

| Fase | Título | Narrativa | Carga Emocional |
| :--- | :--- | :--- | :--- |
| 1 | **El Inicio** | Comienza la mañana en la Plaza de Santa Ana (Vegueta). El protagonista se prepara para la romería. | Alegría, calma, anticipación. |
| 2 | **Incidente Incitador** | ¡Se ha perdido el timple sagrado! El protagonista debe correr por Triana para encontrarlo antes del baile final. | Sorpresa, urgencia leve. |
| 3 | **El Viaje** | Cruzando el Parque San Telmo y subiendo por la ciudad. El ritmo aumenta, aparecen más obstáculos (turistas, palomas). | Determinación, energía. |
| 4 | **El Punto Bajo** | Cerca del Puerto, el cielo se nubla (panza de burro). El camino se llena de charcos y obstáculos pesados. | Tensión, desafío, cansancio. |
| 5 | **El Clímax** | ¡Llegada al Paseo de Las Canteras! Carrera final al sol con el público animando y música de parrandas a tope. | Euforia, máxima velocidad. |
| 6 | **La Resolución** | Entrega del timple en el Auditorio Alfredo Kraus. Gran fiesta final con fuegos artificiales. | Triunfo, satisfacción, comunidad. |

## 3. Especificación de Fases y Parámetros

### Fase 1-2: Vegueta y Triana
- **Iluminación**: Mañana soleada, luz cálida sobre piedra canaria.
- **Paleta**: Amarillos, ocres, cielo azul claro.
- **Sonido**: Isas canarias suaves de fondo.
- **Ritmo**: Tutorial, velocidad moderada.
- **Parallax**: 
    - Capa 1: Casas coloniales, balcones de madera.
    - Capa 2: Catedral de Santa Ana.
    - Capa 3: Palmeras y cielo.
    - Capa 4: Nubes suaves.

### Fase 3-4: San Telmo al Puerto
- **Iluminación**: Mediodía, pero con sombras de la "panza de burro" en la fase 4.
- **Paleta**: Grises azulados, verdes de parque, tonos urbanos.
- **Sonido**: Ambiente de ciudad, timple más rápido.
- **Ritmo**: Aumento de velocidad, saltos más precisos.
- **Parallax**: 
    - Capa 1: Kiosco de San Telmo, paradas de guaguas.
    - Capa 2: Edificios de la ciudad, Castillo de la Luz.
    - Capa 3: Grúas del Puerto de la Luz.
    - Capa 4: Cielo con panza de burro.

### Fase 5-6: Las Canteras
- **Iluminación**: Atardecer dorado sobre la playa.
- **Paleta**: Naranjas, rojos, azul océano profundo.
- **Sonido**: Parranda intensa, sonido de olas.
- **Ritmo**: Velocidad máxima, obstáculos frecuentes.
- **Parallax**: 
    - Capa 1: Arena, sombrillas, muros del paseo.
    - Capa 2: La Barra de Las Canteras, surfistas.
    - Capa 3: El Teide a lo lejos (horizonte).
    - Capa 4: Cielo de atardecer con colores intensos.

## 4. Listado de Assets

### Tilesets (4x4 Grid)
- **Suelos**: Adoquines de Vegueta, asfalto de ciudad, arena/baldosas del Paseo de Las Canteras.
- **Plataformas**: Bancos de parque, cajas de fruta (plátanos), muros bajos.
- **Decoración**: Macetas con geranios, banderas de Canarias, farolas antiguas.

### Fondos Parallax (4 Capas por set)
- **Set 1 (Vegueta)**: Calles estrechas, Catedral, Palmeras, Cielo.
- **Set 2 (Puerto)**: Edificios, Barcos/Grúas, Mar lejano, Nubes grises.
- **Set 3 (Canteras)**: Paseo, Playa/Mar, Horizonte/Teide, Atardecer.

### Sprite Sheets (4x4 Grid)
1. **Protagonista**: "Ayoze" (Chico con traje de mago canario) o "Naira" (Chica con traje de maga).
    - Animaciones: Idle, Run, Jump, Fall.
2. **Enemigo 1**: "Paloma de Parque" (Obstáculo volador).
    - Animaciones: Vuelo, Ataque (picotazo).
3. **Enemigo 2**: "Guagua despistada" o "Turista con prisa".
    - Animaciones: Movimiento lateral, Reacción al golpe.

### UI y VFX
- **UI**: Botones con estilo rústico/madera, barra de energía (icono de plátano).
- **VFX**: Partículas de arena, chispas al saltar sobre adoquines, confeti de colores para la victoria.
