# Metadatos Técnicos del Tileset: El Molino (Gofio Dash)

Guía de mapeo y colisiones para los elementos del interior del molino.

## Especificaciones Generales
- **Archivo**: `tileset_gofio.png`
- **Estructura**: Cuadrícula de 4x4.
- **Resolución de Celda**: 256x256 píxeles.
- **Resolución Total**: 1024x1024 píxeles.
- **Perspectiva**: Isométrica 3/4.

## Matriz de Elementos (4x4)

| Fila \ Col | Columna 1 | Columna 2 | Columna 3 | Columna 4 |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Suelo Madera | Suelo Piedra | Muro con ventana | Muro liso |
| **Fila 2** | Engranaje Madera | Engranaje Piedra | Eje central | Piedra de molino |
| **Fila 3** | Saco lleno | Saco medio | Saco volado | Pala de madera |
| **Fila 4** | Pila de Gofio | Talla de barro | Herramienta | Harina (suelo) |

## Áreas Multicela y Colisiones
- **Eje Central**: Ocupa Fila 2, Col 3 y Fila 1, Col 3 (Estructura vertical).
- **Obstáculos (Sólidos)**: Fila 2 (Engranajes y Piedra de molino), Fila 3 (Sacos grandes).
- **Transitable (Suelo)**: Fila 1 (Suelos) y Fila 4, Col 4 (Harina).

## Sugerencias de Implementación
Utilizar la Fila 1, Col 1 como tile base para las plataformas. Los engranajes de la Fila 2 pueden animarse por software rotando el tile individualmente si es necesario.
