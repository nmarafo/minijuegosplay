# Informe de Mapeo Técnico: Tileset Pueblo Canario

## 1. Especificaciones de Hoja
- **Archivo:** `tileset_pueblo_canario.png`
- **Dimensiones Totales:** 1024 x 1024 px
- **Distribución:** Cuadrícula 4x4
- **Tamaño de Celda:** 256 x 256 px

## 2. Matriz de Elementos (Grid 4x4)

| Fila \ Col | Columna 1 | Columna 2 | Columna 3 | Columna 4 |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** (Y:0-255) | Suelo Adoquines A | Suelo Adoquines B | Pared Blanca (Ventana) | Pared Blanca (Puerta) |
| **Fila 2** (Y:256-511) | Balcón Canario (Base) | Cesta de Frutas | Suelo Piedra Apilada | Área Vacía (Chroma) |
| **Fila 3** (Y:512-767) | Muro con Reja | Área Vacía (Chroma) | Bandera (Mástil) | Área Vacía (Chroma) |
| **Fila 4** (Y:768-1023) | Maceta con Planta | Cesta Mimbre Vacía | Tablones de Madera | Banderas de Mesa |

## 3. Guía para el Motor de Juego

### Áreas de Colisión
- **Transitables (Suelos):** F1C1, F1C2, F2C3.
- **Obstáculos (Muros/Objetos):** F1C3, F1C4, F2C1, F2C2, F3C1, F3C3, F4C1, F4C2, F4C3, F4C4.

### Sugerencias de Renderizado
- **Punto de Anclaje (Pivot):** Inferior-Centro para objetos decorativos.
- **Z-Index:** Los elementos de la Fila 2 (Balcón) y Fila 3 (Muro) deben tener un índice de profundidad mayor que los suelos de la Fila 1.
- **Repetición:** Las celdas F1C1 y F1C2 están diseñadas para ser "seamless" (conectables) entre sí para crear caminos largos.

---
*Este informe ha sido generado automáticamente por el Diseñador de Tilesets para asegurar la integración técnica perfecta en el motor de Guanche Jump.*
