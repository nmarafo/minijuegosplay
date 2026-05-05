# Guía Técnica de Animaciones: El Molinero (Gofio Dash)

Especificaciones para el protagonista de "Gofio Dash: El Molino de Viento".

## Especificaciones del Spritesheet
- **Archivos**: `molinero_fase1.png`, `molinero_fase2.png`
- **Cuadrícula**: 7 filas x 4 columnas.
- **Dimensiones por Frame**: 256x256 píxeles.
- **Resolución Total**: 1024x1792 píxeles.
- **Fondo**: Transparente (Canal Alfa).

## Mapeo de Acciones (Fase 1)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Idle** | 4 | (0, 0) | Espera activa en el molino. |
| 2 | **Walk** | 4 | (0, 256) | Desplazamiento normal. |
| 3 | **Run** | 4 | (0, 512) | Carrera rápida para salvar sacos. |
| 4 | **Jump** | 4 | (0, 768) | Salto entre plataformas. |
| 5 | **Carry Sack** | 4 | (0, 1024) | Caminar cargando peso. |
| 6 | **Hurt** | 4 | (0, 1280) | Impacto de ráfaga o piedra. |
| 7 | **Fall** | 4 | (0, 1536) | Caída desde plataforma. |

## Mapeo de Acciones (Fase 2)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 8 | **Victory** | 4 | (0, 0) | Gesto de triunfo (Día de Canarias). |
| 9 | **Slide** | 4 | (0, 256) | Deslizamiento bajo obstáculos. |
| 10 | **Crouch** | 4 | (0, 512) | Agachado. |
| 11 | **Catch** | 4 | (0, 768) | Atrapar un saco en el aire. |
| 12 | **Dizzy** | 4 | (0, 1024) | Confusión por golpe. |
| 13 | **Attack** | 4 | (0, 1280) | Lanzar harina a enemigos. |
| 14 | **Interact** | 4 | (0, 1536) | Activar palancas del molino. |

## Guía de Implementación
Utilizar un `pivot` en (128, 240) para alineación base. La velocidad de animación sugerida es de 10-12 FPS para Carrera y 6-8 FPS para Idle.
