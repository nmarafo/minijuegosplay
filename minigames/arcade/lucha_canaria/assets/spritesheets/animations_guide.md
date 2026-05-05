# Guía Técnica de Animaciones: Luchador de Lucha Canaria

Este documento proporciona las especificaciones necesarias para la implementación del protagonista en el motor de juego.

## Especificaciones del Spritesheet
- **Archivos**: `luchador_fase1.png`, `luchador_fase2.png`
- **Estructura**: Cuadrícula de 7 filas x 4 columnas (28 frames totales por archivo).
- **Dimensiones por Frame**: 256x256 píxeles.
- **Resolución Total**: 1024px (ancho) x 1792px (alto).
- **Fondo**: Transparente (Canal Alfa).

## Mapeo de Acciones (Fase 1)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción Técnica |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Idle** | 4 | (0, 0) | Guardia básica en el terrero. |
| 2 | **Walk** | 4 | (0, 256) | Desplazamiento lateral. |
| 3 | **Push** | 4 | (0, 512) | Fuerza contra el oponente. |
| 4 | **Grapple** | 4 | (0, 768) | Agarre de la ropa de brega. |
| 5 | **Maña** | 4 | (0, 1024) | Técnica especial de derribo. |
| 6 | **Hurt** | 4 | (0, 1280) | Reacción al recibir impacto. |
| 7 | **Fall** | 4 | (0, 1536) | Animación de caída al suelo. |

## Mapeo de Acciones (Fase 2)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción Técnica |
| :--- | :--- | :--- | :--- | :--- |
| 8 | **Victory** | 4 | (0, 0) | Celebración noble. |
| 9 | **Hands** | 4 | (0, 256) | Saludo deportivo. |
| 10 | **Crouch** | 4 | (0, 512) | Agacharse / Evitar maña. |
| 11 | **Heavy Push** | 4 | (0, 768) | Empuje de máxima potencia. |
| 12 | **Dodge** | 4 | (0, 1024) | Esquiva rápida. |
| 13 | **Exhausted** | 4 | (0, 1280) | Estado de fatiga. |
| 14 | **Interact** | 4 | (0, 1536) | Diálogo / Selección. |

## Guía de Implementación
Para un recorte preciso, el motor debe iterar sobre la cuadrícula usando pasos de 256px. Se recomienda un `pivot` central en la base del personaje (128, 240) para asegurar que los pies toquen siempre el suelo del terrero.
