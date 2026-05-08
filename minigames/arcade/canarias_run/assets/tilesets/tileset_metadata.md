# Tileset Metadata: Canarias Run

Este documento describe la estructura y propiedades del tileset generado.

## Dimensiones Base
- **Resolución Total**: 1024x1024 px.
- **Cuadrícula**: 4 filas x 4 columnas (16 celdas).
- **Tamaño por Celda**: 256x256 px.

## Matriz de Elementos (4x4)

| Fila | Columna | Contenido | Tipo de Colisión |
| :--- | :--- | :--- | :--- |
| 1 | 1 | Adoquines de Vegueta | Transitable (Suelo) |
| 1 | 2 | Arena de Las Canteras | Transitable (Suelo) |
| 1 | 3 | Baldosas del Paseo | Transitable (Suelo) |
| 1 | 4 | Tierra/Camino rústico | Transitable (Suelo) |
| 2 | 1 | Muro bajo de piedra canaria | Obstáculo (Sólido) |
| 2 | 2 | Muro de ladrillo urbano | Obstáculo (Sólido) |
| 2 | 3 | Pared blanca (Fachada) | Obstáculo (Sólido) |
| 2 | 4 | Murete decorativo | Obstáculo (Sólido) |
| 3 | 1 | Banco de parque (Izquierda) | Obstáculo (Plataforma) |
| 3 | 2 | Banco de parque (Derecha) | Obstáculo (Plataforma) |
| 3 | 3 | Caja de frutas (Plátanos) | Obstáculo (Caja rompible) |
| 3 | 4 | Maceta con geranios | Obstáculo (Decorativo) |
| 4 | 1 | Base de farola antigua | Obstáculo (Sólido) |
| 4 | 2 | Parte superior de farola | Obstáculo (No colisionable) |
| 4 | 3 | Bandera de Canarias | Decoración (Background) |
| 4 | 4 | Barril de madera | Obstáculo (Sólido) |

## Áreas Multicela
- **Banco de madera**: Ocupa Fila 3, Columnas 1-2 (2 celdas de ancho).
- **Farola antigua**: Ocupa Columna 1, Filas 4 (base) y parte de Fila 3 si fuera necesario, pero asume 1 celda para simplificar, apilando `[4,1]` y `[4,2]` verticalmente en el motor.

## Notas Técnicas
- **Seamless**: Los suelos (Fila 1) y muros (Fila 2) ocupan la celda de borde a borde para permitir construcción en bloque continuo.
- **Chroma Key**: El fondo original magenta (`#FF00FF`) ha sido eliminado y las áreas no utilizadas son ahora transparentes (Canal Alfa).
