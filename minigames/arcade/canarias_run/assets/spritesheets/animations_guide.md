# Animations Guide: Canarias Run

Este documento describe la estructura de los spritesheets utilizados en el juego y el mapeo de animaciones.

## Especificaciones Técnicas Generales
- **Resolución del Spritesheet**: 1024x1024 px.
- **Cuadrícula**: 4 filas x 4 columnas.
- **Tamaño del Frame**: 256x256 px.
- **Fondo**: Transparente (Post-procesado desde blanco/negro).
- **Perspectiva**: Side-view (Vista lateral).

---

## 1. Protagonista: Ayoze
Archivo: `assets/spritesheets/ayoze_fase1.png`

| Fila | Acción | Frames | Descripción |
| :--- | :--- | :--- | :--- |
| 1 | **Idle** | 4 | El personaje respira o espera en el sitio. |
| 2 | **Walk** | 4 | Caminata rítmica. |
| 3 | **Run** | 4 | Carrera rápida para el gameplay principal. |
| 4 | **Jump** | 4 | Animación de salto (impulso y aire). |

Archivo: `assets/spritesheets/ayoze_fase2.png`

| Fila | Acción | Frames | Descripción |
| :--- | :--- | :--- | :--- |
| 1 | **Attack** | 4 | Ataque usando un timple como herramienta/arma. |
| 2 | **Hurt** | 4 | Reacción al recibir daño. |
| 3 | **Fall / Death** | 4 | Caída o derrota del personaje. |
| 4 | **Victory** | 4 | Celebración del Día de Canarias. |

---

## 2. Enemigos por Fase

### Fase 1: Vegueta
Archivo: `assets/spritesheets/enemies_vegueta.png`

| Fila | Entidad | Acción | Frames |
| :--- | :--- | :--- | :--- |
| 1 | **Paloma** | Vuelo | 4 |
| 2 | **Turista** | Caminar | 4 |
| 3 | **Vendedor** | Moverse | 4 |
| 4 | **Gato** | Correr | 4 |

### Fase 2: Puerto
Archivo: `assets/spritesheets/enemies_puerto.png`

| Fila | Entidad | Acción | Frames |
| :--- | :--- | :--- | :--- |
| 1 | **Guagua** | Movimiento | 4 |
| 2 | **Carretilla** | Movimiento | 4 |
| 3 | **Marinero** | Caminar | 4 |
| 4 | **Gaviota** | Vuelo | 4 |

### Fase 3: Las Canteras
Archivo: `assets/spritesheets/enemies_canteras.png`

| Fila | Entidad | Acción | Frames |
| :--- | :--- | :--- | :--- |
| 1 | **Cangrejo** | Movimiento | 4 |
| 2 | **Surfista** | Correr | 4 |
| 3 | **Pelota** | Rebotar | 4 |
| 4 | **Medusa** | Flotar | 4 |

---

## Guía de Implementación para el Motor
Para recortar las animaciones, utiliza el siguiente pseudocódigo:

```javascript
const FRAME_SIZE = 256;
const COLS = 4;

function getFrameRect(row, frameIndex) {
    return {
        x: (frameIndex % COLS) * FRAME_SIZE,
        y: (row - 1) * FRAME_SIZE,
        width: FRAME_SIZE,
        height: FRAME_SIZE
    };
}
```
