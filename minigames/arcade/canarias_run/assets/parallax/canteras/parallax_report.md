# Parallax Report: Canarias Run (Canteras Phase)

Este informe detalla la configuración de las capas de fondo para la fase de Las Canteras.

## Especificaciones de Capas

| Capa | Archivo | Contenido | Velocidad Sugerida | Alineación |
| :--- | :--- | :--- | :--- | :--- |
| 4 | `layer4_far.png` | Cielo de atardecer (Naranjas/Pinks). | 0.05x | Fondo Total |
| 3 | `layer3_mid.png` | Horizonte con El Teide y La Barra. | 0.2x | Fondo (Base inferior) |
| 2 | `layer2_foreground.png` | Paseo de Las Canteras y palmeras. | 0.5x | Base (Suelo) |
| 1 | `layer1_detail.png` | Sombrillas y postes de ducha. | 1.5x | Base (Suelo) |

## Notas Técnicas
- **Atmósfera**: Atardecer cálido para el clímax final del juego.
- **Seamless**: Tiling horizontal infinito garantizado.
- **Transparencia**: Canal Alfa aplicado a las capas 1, 2 y 3.
