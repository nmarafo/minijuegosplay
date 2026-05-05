# Guía de Animaciones: Pastor Canario (Cartoon)

Este documento detalla la estructura del spritesheet generado para el protagonista del juego "El Salto del Pastor".

## Especificaciones Técnicas
- **Formato**: PNG (Alpha Channel / Transparencia aplicada).
- **Cuadrícula**: 7 filas x 4 columnas.
- **Relación de Aspecto por Frame**: 1:1.
- **Fondo Original**: Negro (Eliminado para transparencia).

## Mapeo de Animaciones (Fase 1: pastor_fase1.png)

| Fila | Acción | Descripción | Frames |
| :--- | :--- | :--- | :--- |
| 1 | **Idle** | Pastor respirando, sosteniendo el garrote. | 4 |
| 2 | **Walk** | Caminata rítmica con el garrote al hombro. | 4 |
| 3 | **Run** | Carrera impulsada hacia adelante. | 4 |
| 4 | **Jump** | Impulso inicial usando el garrote como pértiga. | 4 |
| 5 | **Attack** | Golpe lateral o estocada con la punta del garrote. | 4 |
| 6 | **Hurt** | Reacción de impacto y retroceso. | 4 |
| 7 | **Death** | Caída dramática al suelo. | 4 |

## Mapeo de Animaciones (Fase 2: pastor_fase2.png)

| Fila | Acción | Descripción | Frames |
| :--- | :--- | :--- | :--- |
| 8 | **Crouch** | Agachado, posición de sigilo o defensa. | 4 |
| 9 | **Dash** | Deslizamiento rápido por el suelo. | 4 |
| 10 | **Block** | Cubrirse con el garrote cruzado. | 4 |
| 11 | **Climb** | Subiendo por un risco o cuerda. | 4 |
| 12 | **Fall** | Estado de caída libre después del salto. | 4 |
| 13 | **Cast** | Grito de ánimo (buff) o acción especial. | 4 |
| 14 | **Interact** | Recoger un producto típico o accionar palanca. | 4 |

## Instrucciones para el Motor
1. Dividir la imagen en una rejilla de 7x4.
2. Cada animación debe reproducirse en bucle, excepto **Jump**, **Hurt** y **Death**, que son de un solo disparo (One-shot).
3. El centro de masa debe estar alineado con la base del personaje en cada frame.
