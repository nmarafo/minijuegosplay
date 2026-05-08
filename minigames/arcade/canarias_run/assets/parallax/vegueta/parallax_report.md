# Parallax Report: Canarias Run (Vegueta Phase)

Este informe detalla la configuración de las capas de fondo para la fase de Vegueta/Triana.

## Especificaciones de Capas

| Capa | Archivo | Contenido | Velocidad Sugerida | Alineación |
| :--- | :--- | :--- | :--- | :--- |
| 4 | `layer4_far.png` | Cielo azul y nubes suaves. | 0.05x | Fondo Total |
| 3 | `layer3_mid.png` | Siluetas de la Catedral y tejados. | 0.2x | Fondo (Base inferior) |
| 2 | `layer2_foreground.png` | Casas coloniales y palmeras. | 0.5x | Base (Suelo) |
| 1 | `layer1_detail.png` | Farolas y banderas (Foreground). | 1.5x | Base (Suelo) |

## Notas Técnicas
- **Continuidad (Seamless)**: Todas las capas han sido generadas para permitir un tiling horizontal infinito sin saltos visuales.
- **Transparencia**: 
    - Las capas 1, 2 y 3 tienen transparencia en la parte superior (canal Alfa aplicado).
    - La capa 4 es opaca y sirve como lienzo base.
- **Perspectiva**: Se recomienda aplicar un filtro de desenfoque ligero (Blur) a la Capa 3 para aumentar la sensación de profundidad atmosférica.
- **Alineación**: Asegúrese de que la parte inferior de las capas 1, 2 y 3 coincida con la línea de tierra (Ground Line) definida en el motor.
