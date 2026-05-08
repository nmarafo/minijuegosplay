# Parallax Report: Canarias Run (Puerto Phase)

Este informe detalla la configuración de las capas de fondo para la fase del Puerto.

## Especificaciones de Capas

| Capa | Archivo | Contenido | Velocidad Sugerida | Alineación |
| :--- | :--- | :--- | :--- | :--- |
| 4 | `layer4_far.png` | Cielo gris (Panza de burro). | 0.05x | Fondo Total |
| 3 | `layer3_mid.png` | Ciudad y Castillo de la Luz. | 0.2x | Fondo (Base inferior) |
| 2 | `layer2_foreground.png` | Barcos y grúas amarillas. | 0.5x | Base (Suelo) |
| 1 | `layer1_detail.png` | Señales de tráfico y postes. | 1.5x | Base (Suelo) |

## Notas Técnicas
- **Atmósfera**: Luz plana y tonos industriales para reflejar el clima típico del Puerto.
- **Seamless**: Tiling horizontal infinito garantizado.
- **Transparencia**: Canal Alfa aplicado a las capas 1, 2 y 3.
