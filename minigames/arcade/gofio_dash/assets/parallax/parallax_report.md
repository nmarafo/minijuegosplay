# Informe Técnico de Paralaje: El Molino de Viento (Gofio Dash)

Detalle de capas para el efecto de profundidad visual en "Gofio Dash: El Molino de Viento".

## Configuración de Capas

| Prioridad | Archivo | Contenido | Velocidad | Alineación |
| :--- | :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Cielo azul, nubes suaves y silueta de molino lejano. | 0.05x | Superior (Top) |
| **Capa 3** | `layer3_mid.png` | Palmeras y casas tradicionales canarias en colina. | 0.20x | Base (Bottom) |
| **Capa 2** | `layer2_foreground.png` | Muros de piedra del molino, maderas y sacos colgados. | 0.50x | Base (Bottom) |
| **Capa 1** | `layer1_detail.png` | Barriles de grano, tallas de barro y harina esparcida. | 1.00x | Base (Bottom) |

## Guía de Movimiento y Continuidad
- **Seamless Scroll**: Todas las capas han sido diseñadas para un desplazamiento horizontal infinito.
- **Alineación Vertical**: Las capas 1, 2 y 3 deben anclarse a la parte inferior del canvas. La capa 4 es el fondo estático/base.
- **Transparencia**: Canal Alfa aplicado tras post-procesamiento de croma verde.

## Recomendaciones para el Motor
Aplicar un multiplicador de velocidad negativo (`scrollX -= speed`) para simular el avance del molinero hacia la derecha. La Capa 1 debe tener la mayor nitidez, mientras que la Capa 4 puede tener un ligero desenfoque atmosférico.
