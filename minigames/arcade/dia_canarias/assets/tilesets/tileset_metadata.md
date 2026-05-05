# Metadatos del Tileset: Elementos de los Riscos Canarios

Este documento define la matriz de elementos para el tileset del juego "El Salto del Pastor".

## Especificaciones de la Hoja
- **Cuadrícula**: 4 columnas x 4 filas (16 celdas totales).
- **Tamaño de Celda**: 256px x 256px (Hojas de 1024px).
- **Perspectiva**: Isométrica 3/4 (Front-Right).
- **Fondo**: Magenta Puro (#FF00FF) para transparencia.

## Matriz de Elementos (4x4)

| Fila \ Col | Columna 1 | Columna 2 | Columna 3 | Columna 4 |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Bloque Piedra Volcánica | Esquina Risco Izq | Esquina Risco Der | Suelo de Tierra |
| **Fila 2** | Plataforma Madera 1 | Plataforma Madera 2 | Valla de Piedra | Escalera de Mano |
| **Fila 3** | Queso Majorero | Plátano de Canarias | Saco de Gofio | Garrote (Item) |
| **Fila 4** | Pino Canario (Base) | Cardón (Pequeño) | Tabaiba | Banderitas Fiesta |

## Lógica de Colisión y Uso
- **Suelos**: Fila 1 (Todas) y Fila 2 (Col 1-2).
- **Obstáculos**: Fila 2 (Col 3-4) y Fila 4 (Todas).
- **Recolectables**: Fila 3 (Todas).
- **Escalado**: Los elementos de la Fila 4 pueden ocupar visualmente más de una celda en altura, pero su base está centrada en la celda correspondiente.
