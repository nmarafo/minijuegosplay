# Informe Técnico de Paralaje: Guanche Jump - Fase 1 (La Plaza)

Este documento proporciona las especificaciones necesarias para la correcta implementación de las capas de paralaje en el motor de juego.

## Especificaciones de Capas

| Capa | Archivo | Contenido | Transparencia (Superior) | Velocidad Sugerida |
| :--- | :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Cielo y silueta del Teide | ~15% del alto | 0.05 - 0.1 |
| **Capa 3** | `layer3_mid.png` | Siluetas de casas coloniales | ~30% del alto | 0.2 - 0.3 |
| **Capa 2** | `layer2_foreground.png` | Banderas, carretas y muros | ~45% del alto | 0.5 - 0.7 |
| **Capa 1** | `layer1_detail.png` | Pétalos, aves y suelo | ~65% del alto | 1.0 (Referencia) |

## Guía de Posicionamiento

### Alineación Vertical
Todas las capas han sido diseñadas para ser **alineadas por la parte inferior** (`bottom-aligned`). 
- El área transparente en la parte superior de cada capa permite visualizar las capas que se encuentran por detrás.
- Al alinear todas las capas en `y = alto_pantalla`, los elementos de suelo y estructuras coincidirán correctamente en perspectiva.

### Comportamiento de Scroll
- **Seamless horizontal**: Todas las capas soportan repetición infinita en el eje X. Asegurarse de que el modo de repetición del sprite/textura esté activo.
- **Velocidad**: Se recomienda una escala de velocidad descendente hacia el fondo para maximizar el efecto de profundidad 2.5D.

## Notas de Diseño
- La **Capa 1** incluye detalles de primer plano que pasan muy cerca de la cámara; se recomienda usarla como referencia de velocidad para el movimiento del jugador.
- Las transparencias han sido generadas mediante post-procesamiento de color verde puro (`#00FF00`).
