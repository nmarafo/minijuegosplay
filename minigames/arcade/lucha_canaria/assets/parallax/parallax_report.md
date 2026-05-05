# Informe Técnico de Paralaje: Entorno del Terrero

Detalle de capas para el efecto de profundidad visual en "Lucha Canaria: Desafío de Puntales".

## Configuración de Capas

| Prioridad | Archivo | Contenido | Velocidad | Alineación |
| :--- | :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Cielo azul y nubes estáticas. | 0.05x | Superior (Top) |
| **Capa 3** | `layer3_mid.png` | Palmeras y arquitectura canaria. | 0.25x | Base (Bottom) |
| **Capa 2** | `layer2_foreground.png` | Gradas con público y banderas. | 0.60x | Base (Bottom) |
| **Capa 1** | `layer1_detail.png` | Jarras de agua y toallas cercanas. | 1.00x | Base (Bottom) |

## Guía de Movimiento y Continuidad
- **Seamless Scroll**: Todas las capas han sido validadas para un desplazamiento horizontal infinito sin saltos visuales.
- **Alineación Vertical**: Las capas 1, 2 y 3 deben anclarse a la parte inferior del canvas (`y = canvas.height - img.height`). La capa 4 debe cubrir el fondo total.
- **Transparencia**: Las áreas superiores de las capas 1 a 3 son transparentes, permitiendo ver las capas de fondo.

## Recomendaciones para el Motor
Se sugiere aplicar un ligero desenfoque (blur) a la Capa 3 y 4 para enfatizar la distancia y mantener el foco en la acción central del terrero.
