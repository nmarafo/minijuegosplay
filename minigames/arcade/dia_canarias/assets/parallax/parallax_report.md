# Informe Técnico: Fondo de Paralaje - El Salto del Pastor

Este informe describe la estructura de capas para el fondo dinámico del juego "El Salto del Pastor", diseñado con un estilo Cartoon vibrante.

## Estructura de Capas

| Capa | Nombre Archivo | Descripción | Velocidad Sugerida |
| :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Cielo degradado (Naranja/Azul) con la silueta del Teide en la lejanía. | 0.1x |
| **Capa 3** | `layer3_mid.png` | Mar azul profundo con siluetas de otras islas (La Gomera, El Hierro) y nubes altas. | 0.3x |
| **Capa 2** | `layer2_foreground.png` | Riscos de piedra volcánica y nubes bajas (panza de burro) que pasan entre los riscos. | 0.6x |
| **Capa 1** | `layer1_detail.png` | Pinos canarios, cardones y tabaibas en primer plano con gran contraste. | 1.0x |

## Especificaciones Técnicas
- **Continuidad (Seamless)**: Todas las capas están diseñadas para repetirse horizontalmente sin saltos visibles.
- **Transparencia (Chroma Key)**: Se ha utilizado verde puro (#00FF00) en la parte superior de las capas 1, 2 y 3 para definir el área de juego y visibilidad de las capas traseras.
- **Resolución**: Optimizada para scroll horizontal infinito.

## Recomendaciones de Implementación
1. Alinear todas las capas por la base (bottom alignment).
2. Aplicar un efecto de niebla ligera entre la Capa 2 y la Capa 3 para aumentar la profundidad.
3. La Capa 1 debe tener colisiones simuladas visualmente si el pastor se acerca demasiado al borde.
