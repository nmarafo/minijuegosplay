# Metadatos Técnicos del Tileset: Terrero Tradicional

Guía de mapeo y colisiones para los elementos estáticos del terrero de Lucha Canaria.

## Especificaciones Generales
- **Archivo**: `tileset_lucha.png`
- **Estructura**: Cuadrícula de 4 columnas x 4 filas.
- **Resolución de Celda**: 256x256 píxeles.
- **Resolución Total**: 1024x1024 píxeles.
- **Perspectiva**: Isométrica 3/4 (Diagonal Front-Right).

## Matriz de Elementos (4x4)

| Fila \ Col | Columna 1 | Columna 2 | Columna 3 | Columna 4 |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Suelo Arena (Limpio) | Suelo Arena (Huellas) | Borde Madera (Recto) | Borde Madera (Curva) |
| **Fila 2** | Banco Madera (Izquierda) | Banco Madera (Derecha) | Valla tradicional | Poste de bandera |
| **Fila 3** | Jarra de barro (Talla) | Toalla doblada | Cubo de agua | Piedra decorativa |
| **Fila 4** | Bandera Canarias | Palmera (Base) | Arbusto | Arena con piedras |

## Áreas Multicela y Colisiones
- **Banco Largo**: Ocupa Fila 2, Col 1 y Col 2 de forma contigua.
- **Obstáculos (Sólidos)**: Todos los elementos de la Fila 2 y Fila 3 deben tener cajas de colisión para evitar que el luchador los atraviese.
- **Transitable (Suelo)**: Fila 1 (Cualquier columna) y Fila 4, Col 4.

## Sugerencias de Implementación
Utilizar la Fila 1, Col 1 para el llenado base del círculo de arena. Los bordes de la Fila 1 deben rotarse o seleccionarse según la posición en el círculo para dar continuidad al perímetro del terrero.
