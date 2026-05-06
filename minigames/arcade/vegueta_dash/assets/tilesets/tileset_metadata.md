# Metadatos Técnicos del Tileset: Vegueta Dash

Guía de mapeo y colisiones para los elementos arquitectónicos de Vegueta.

## Especificaciones Generales
- **Archivo**: `tileset_vegueta.png`
- **Estructura**: Cuadrícula de 4x4.
- **Resolución de Celda**: 256x256 píxeles.
- **Resolución Total**: 1024x1024 píxeles.
- **Perspectiva**: Isométrica 3/4.

## Matriz de Elementos (4x4)

| Fila \ Col | Columna 1 | Columna 2 | Columna 3 | Columna 4 |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Adoquines | Adoquines (Detalle) | Muro Piedra | Muro con ventana |
| **Fila 2** | Balcón Madera | Balcón (Esquina) | Arco Colonial | Pilar Piedra |
| **Fila 3** | Puesto Flores | Maceta Geranio | Banco Piedra | Farola Pared |
| **Fila 4** | Escalón | Reja Hierro | Detalle Pared | Suelo Arena |

## Áreas Multicela y Colisiones
- **Arco Colonial**: Ocupa Fila 2, Col 3 y Fila 1, Col 3 (Estructura de paso).
- **Obstáculos (Sólidos)**: Fila 1, Col 3-4 (Muros), Fila 2 (Balcones y Pilares), Fila 3 (Bancos y Puestos).
- **Transitable (Suelo)**: Fila 1, Col 1-2 (Adoquines) y Fila 4, Col 4 (Arena).

## Sugerencias de Implementación
Utilizar los adoquines de la Fila 1 como base para las plataformas. Los balcones de la Fila 2 se pueden colocar como obstáculos aéreos que el jugador debe esquivar deslizándose (slide).
