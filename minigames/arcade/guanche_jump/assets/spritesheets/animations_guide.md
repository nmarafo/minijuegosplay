# Guía de Animaciones - Guanche Jump

Este documento sirve como referencia técnica para la implementación de las animaciones del protagonista en el motor del videojuego.

## Especificaciones Técnicas del Sprite Sheet
- **Dimensiones Totales**: 1024 x 1024 px.
- **Formato**: PNG con transparencia (Alpha Channel).
- **Estructura de Cuadrícula**: 7 filas x 4 columnas por archivo.
- **Tamaño de Frame Individual**: 256 x 146 px.
- **Origen (Pivot)**: Base central (Bottom-Center).

---

## Mapeo de Píxeles por Frame
Cada animación ocupa una fila completa de 4 frames. El ancho de cada frame es siempre de **256px**.

| Fila | Acción | Coordenada Y (Inicio - Fin) | Frames (X0, X1, X2, X3) |
| :--- | :--- | :--- | :--- |
| 1 | **Idle** | 0 - 146 px | 0, 256, 512, 768 |
| 2 | **Walk** | 146 - 292 px | 0, 256, 512, 768 |
| 3 | **Run** | 292 - 438 px | 0, 256, 512, 768 |
| 4 | **Jump** | 438 - 584 px | 0, 256, 512, 768 |
| 5 | **Attack** | 584 - 730 px | 0, 256, 512, 768 |
| 6 | **Hurt** | 730 - 876 px | 0, 256, 512, 768 |
| 7 | **Death** | 876 - 1022 px | 0, 256, 512, 768 |

---

## Distribución de Archivos

### Archivo: `guanche_fase1.png`
- **Contiene**: Acciones básicas (Filas 1 a 7).
- **Uso**: Movimiento fundamental y combate básico.

### Archivo: `guanche_fase2.png`
- **Contiene**: Acciones avanzadas (Filas 1 a 7 en el archivo, correspondientes a las acciones 8-14 del motor).
- **Acciones**: 1. Crouch, 2. Dash, 3. Block, 4. Climb, 5. Fall, 6. Special, 7. Interact.

---

## Notas de Implementación
- **Velocidad**: 10 FPS (100ms por frame).
- **Corte exacto**: Para evitar "bleeding" entre filas, se recomienda usar los rectángulos exactos definidos en la tabla de mapeo.
- **Offset**: Existe un margen residual de 2 píxeles al final de la imagen que debe ser ignorado.
