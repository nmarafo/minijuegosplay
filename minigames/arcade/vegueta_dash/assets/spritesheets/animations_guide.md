# Guía Técnica de Animaciones: Explorador de Vegueta

Especificaciones para el protagonista de "Vegueta Dash: El Enigma de Colón".

## Especificaciones del Spritesheet
- **Archivos**: `explorador_fase1.png`, `explorador_fase2.png`
- **Cuadrícula**: 7 filas x 4 columnas.
- **Dimensiones por Frame**: 256x256 píxeles.
- **Resolución Total**: 1024x1792 píxeles.
- **Fondo**: Transparente (Canal Alfa).

## Mapeo de Acciones (Fase 1)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Idle** | 4 | (0, 0) | Espera activa en la Plaza de Santa Ana. |
| 2 | **Walk** | 4 | (0, 256) | Caminar por las calles empedradas. |
| 3 | **Run** | 4 | (0, 512) | Carrera rápida tras el perro presa. |
| 4 | **Jump** | 4 | (0, 768) | Salto para esquivar obstáculos bajos. |
| 5 | **Pick Up** | 4 | (0, 1024) | Recoger papas o pergaminos. |
| 6 | **Hurt** | 4 | (0, 1280) | Reacción al chocar con una paloma. |
| 7 | **Fall** | 4 | (0, 1536) | Caída lateral. |

## Mapeo de Acciones (Fase 2)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 8 | **Victory** | 4 | (0, 0) | Gesto de victoria (Día de Canarias). |
| 9 | **Slide** | 4 | (0, 256) | Deslizamiento bajo balcones o cuerdas. |
| 10 | **Crouch** | 4 | (0, 512) | Agachado para ocultarse. |
| 11 | **Dash** | 4 | (0, 768) | Impulso rápido (Mojo Picón). |
| 12 | **Dizzy** | 4 | (0, 1024) | Confusión por golpe. |
| 13 | **Look** | 4 | (0, 1280) | Mirar a través de un catalejo. |
| 14 | **Interact** | 4 | (0, 1536) | Acción de contexto. |

## Mapeo de Acciones: Perro Presa Canario (Fase 1)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Idle** | 4 | (0, 0) | Jadeo impaciente. |
| 2 | **Walk** | 4 | (0, 256) | Trote tranquilo. |
| 3 | **Run** | 4 | (0, 512) | Carrera rápida con el mapa. |
| 4 | **Jump** | 4 | (0, 768) | Salto acrobático. |
| 5 | **Bark** | 4 | (0, 1024) | Ladrido de aviso. |
| 6 | **Pounce** | 4 | (0, 1280) | Salto para jugar. |
| 7 | **Scared** | 4 | (0, 1536) | Reacción de miedo. |

## Mapeo de Acciones: Perro Presa Canario (Fase 2)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 8 | **Run (Map)** | 4 | (0, 0) | Carrera con el pergamino en la boca. |
| 9 | **Slide** | 4 | (0, 256) | Deslizamiento. |
| 10 | **Sleep** | 4 | (0, 512) | Durmiendo al sol. |
| 11 | **Wag** | 4 | (0, 768) | Mover la cola de alegría. |
| 12 | **Confused** | 4 | (0, 1024) | Cabeza ladeada. |
| 13 | **Sniff** | 4 | (0, 1280) | Olfateando el rastro. |
| 14 | **Nudge** | 4 | (0, 1536) | Empujoncito amistoso. |

## Mapeo de Acciones: Paloma de Vegueta (Fase Única)

| Fila | Acción | Frames | Inicio (X, Y) | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| 1 | **Fly** | 4 | (0, 0) | Vuelo estándar batiendo alas. |
| 2 | **Glide** | 4 | (0, 256) | Planeo estático. |
| 3 | **Peck** | 4 | (0, 512) | Picoteando el suelo (Vegueta). |
| 4 | **Flap** | 4 | (0, 768) | Sacudiendo alas de pie. |
| 5 | **Take Off** | 4 | (0, 1024) | Inicio del vuelo. |
| 6 | **Landing** | 4 | (0, 1280) | Aterrizaje. |
| 7 | **Hurt/Fall** | 4 | (0, 1536) | Reacción al impacto. |

## Guía de Implementación
Utilizar un `pivot` central en la base (128, 240) para personajes terrestres y un pivot central (128, 128) para la paloma en vuelo. Se recomienda una velocidad de 12 FPS para Carrera/Vuelo y 8 FPS para Idle/Peck.
