# Mapeo Técnico del Tileset: Vegueta Seamless (v3.0)

Guía de referencia para el motor de juego. Tileset optimizado para renderizado continuo (edge-to-edge) en suelos y paredes.

## Especificaciones Técnicas
- **Dimensiones Totales**: 1024x1024 px.
- **Tamaño de Celda**: 256x256 px.
- **Cuadrícula**: 4 Columnas x 4 Filas.

## Matriz de Elementos (4x4)

| Fila / Columna | Columna 1 (0px) | Columna 2 (256px) | Columna 3 (512px) | Columna 4 (768px) |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1 (0px)** | **Piedra Canaria (Suelo)** | **Adoquín Viejo (Suelo)** | Ladrillo Colonial | Detalle Suelo |
| **Fila 2 (256px)** | **Muro Piedra (Pared)** | **Pared Blanca (Pared)** | Ventana Canaria | Balcón Madera |
| **Fila 3 (512px)** | Farola Ornada | Banco Madera | Maceta Flores | Jarra Barro |
| **Fila 4 (768px)** | Puerta Antigua | Arco Piedra | Relleno Chroma | Relleno Chroma |

## Recomendaciones de Uso
- **Suelos**: Las celdas (1,1) y (1,2) son **seamless**. Pueden repetirse infinitamente sin que se note el corte, ya que rellenan todo el espacio de la celda.
- **Paredes**: Las celdas (2,1) y (2,2) están diseñadas para apilarse horizontalmente como bloques de construcción.
- **Colisiones**: Las celdas de la Fila 1 son transitables. El resto de filas contienen obstáculos o elementos decorativos.
