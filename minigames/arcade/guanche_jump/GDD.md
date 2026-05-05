# Documento de Diseño Conceptual (GDD): Guanche Jump: El Tesoro de las Islas

**Diseñador y Director de Arte:** Antigravity (IA Expert)
**Categoría:** Arcade / Plataformas
**Estilo Artístico:** Cartoon
**Palabras Clave:** Día de Canarias, Archipiélago, Tradición, Energía.

---

## 1. Guion y Curva Emocional

### I. El Inicio (Emoción: Calidez / Expectativa)
El juego comienza en una plaza de pueblo canario decorada con banderas y carretas. Es la mañana del **Día de Canarias**. El protagonista, un joven guanche con vestimenta tradicional estilizada (estilo cartoon), se prepara para la festividad.
*   **Parámetro:** Ambiente luminoso, colores saturados (azules de cielo, blancos de fachadas).

### II. El Incidente Incitador (Emoción: Sorpresa / Urgencia)
Una ráfaga de viento mágica (inspirada en los vientos alisios) se lleva las **Siete Pintaderas Sagradas** que debían presidir el baile de magos. Sin ellas, la fiesta no puede comenzar. El jugador debe recuperarlas saltando entre las nubes y las islas.
*   **Parámetro:** Cambio rápido de ritmo, música de timple que sube de tempo.

### III. El Viaje (Emoción: Diversión / Flow)
El jugador recorre el archipiélago. Debe saltar sobre plataformas que flotan sobre un mar de nubes. En el camino recoge ítems como **Plátanos de Canarias** (puntos) y **Queso de Flor** (escudo temporal).
*   **Parámetro:** Variedad cromática por fase (desde el verde de la laurisilva al negro volcánico).

### IV. El Punto Bajo (Emoción: Tensión / Frustración)
Al llegar a la zona del Teide, una densa **Panza de Burro** (niebla espesa) dificulta la visibilidad. El suelo se vuelve resbaladizo por el picón volcánico. El ritmo de juego se vuelve más técnico y lento.
*   **Parámetro:** Paleta de colores desaturada, sonidos de viento silbante, visibilidad reducida.

### V. El Clímax (Emoción: Adrenalina / Triunfo)
El jugador alcanza la cima del Teide, donde debe atrapar la última Pintadera que está en manos de un travieso Espíritu del Viento (Nube de Gofio gigante). Es una persecución vertical rápida.
*   **Parámetro:** Colores cálidos (atardecer volcánico), música épica con percusión canaria (chácaras).

### VI. La Resolución (Emoción: Alegría / Catarsis)
Con las siete Pintaderas recuperadas, el protagonista desciende a la plaza. El baile de magos comienza, los fuegos artificiales (VFX) iluminan el cielo y se muestra el mensaje "¡Feliz Día de Canarias!".
*   **Parámetro:** Pantalla final festiva, paleta de colores máxima, música de folía animada.

---

## 2. Especificación de Fases y Parámetros de Diseño Emocional

| Fase | Iluminación / Paleta | Sonido / Música | Ritmo | Narrativa Ambiental |
| :--- | :--- | :--- | :--- | :--- |
| **Plaza (Inicio)** | Luz cenital, HSL(210, 80%, 60%) | Timple suave, pájaros | Estático | Banderas moviéndose, ambiente de feria. |
| **Archipiélago** | Gradientes vibrantes, verdes/azules | Folía electrónica (uptempo) | Rápido | Islas al fondo, mar azul cartoon. |
| **Cumbre (Teide)** | Atardecer rojo/ocre, sombras duras | Percusión tribal, viento | Técnico | Rocas volcánicas, vapor de azufre (VFX). |

**Diferencia de Mecánicas:**
- **Cinemáticas:** Introducción (rápida 5s) y Final festivo (no jugable).
- **Jugable:** Fases de salto arcade, recolección y esquiva de enemigos.

---

## 3. Listado de Assets Técnicos y Artísticos

### Tilesets (Fondo y Terreno)
1.  **Tileset "Pueblo Canario":**
    - Suelo de adoquines grises.
    - Paredes de cal blanca con marcos de madera marrón.
    - Decoración: Balcones canarios, cestas de mimbre, banderas del archipiélago.
2.  **Tileset "Naturaleza Salvaje":**
    - Plataformas de piedra volcánica (porosa, negra/marrón).
    - Vegetación: Cardones, tabaibas y palmeras canarias.
    - Fondos de mar de nubes (blanco esponjoso).

### Sprite Sheets (Personajes y Animaciones)
1.  **Protagonista (Héroe Guanche):**
    - *Idle:* Respiración suave, ajuste de montera.
    - *Run:* Carrera enérgica con brazos en movimiento.
    - *Jump:* Salto con estiramiento (stretch & squash).
    - *Fall:* Capa al viento, expresión de sorpresa.
    - *Celebration:* Baile con las manos arriba.
2.  **Enemigo 1 (Lagarto Canario Gigante):**
    - *Patrol:* Movimiento lateral sacando la lengua.
    - *Attack:* Pequeño salto hacia el jugador.
3.  **Enemigo 2 (Espíritu de Nube de Gofio):**
    - *Float:* Movimiento sinoidal.
    - *Dissolve:* Animación de desvanecimiento al ser derrotado.

### UI y VFX
- **UI:** Botones de madera tallada, contador de puntos con icono de plátano, barra de energía con forma de vara de salto del pastor.
- **VFX:**
    - Partículas de polvo de gofio al saltar.
    - Destellos mágicos al recoger Pintaderas.
    - Humo de volcán sutil en la fase del Teide.
    - Fuegos artificiales finales en tres colores (blanco, azul, amarillo).

---

**Fin del Documento.**
