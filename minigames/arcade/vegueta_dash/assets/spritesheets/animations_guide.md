# Guía de Animaciones: Vegueta Dash (Estándar 4x4)

Este documento define el mapeo de frames para los personajes de Vegueta Dash, utilizando el nuevo estándar de cuadrícula 4x4 (1024x1024px).

## Especificaciones Técnicas
- **Resolución de Hoja**: 1024x1024 píxeles.
- **Cuadrícula**: 4 filas x 4 columnas.
- **Tamaño de Frame**: 256x256 píxeles.
- **Formato**: PNG con transparencia (Alpha Channel).

## Mapeo de Personajes

### 1. Explorador Canario (`explorador_fase1.png`)
| Fila | Acción | Y (px) | Frames | Velocidad Sugerida |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Idle | 0 | 4 | 0.1s |
| **Fila 2** | Walk | 256 | 4 | 0.15s |
| **Fila 3** | Run | 512 | 4 | 0.08s |
| **Fila 4** | Jump | 768 | 4 | 0.1s |

### 2. Perro Presa Canario (`presa_fase1.png`)
| Fila | Acción | Y (px) | Frames | Velocidad Sugerida |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Idle | 0 | 4 | 0.1s |
| **Fila 2** | Walk | 256 | 4 | 0.12s |
| **Fila 3** | Run | 512 | 4 | 0.08s |
| **Fila 4** | Jump | 768 | 4 | 0.1s |

### 3. Paloma de Vegueta (`paloma_vegueta.png`)
| Fila | Acción | Y (px) | Frames | Velocidad Sugerida |
| :--- | :--- | :--- | :--- | :--- |
| **Fila 1** | Fly | 0 | 4 | 0.08s |
| **Fila 2** | Glide | 256 | 4 | 0.1s |
| **Fila 3** | Peck | 512 | 4 | 0.1s |
| **Fila 4** | Flap | 768 | 4 | 0.08s |

## Notas de Implementación
Para evitar el sangrado de sprites, se recomienda aplicar un recorte interno (crop) de 4 píxeles en el motor de juego al leer las coordenadas de origen.
