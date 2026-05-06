# Informe Técnico de Paralaje: Barrio de Vegueta (Versión Final)

Detalle de capas definitivas tras optimización de croma y alineación.

## Configuración de Capas

| Prioridad | Archivo | Contenido | Velocidad | Alineación | Transparencia (Chroma) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Amanecer en Vegueta y silueta de Catedral. | 0.05x | Fondo Total | **SIN TRANSPARENCIA** |
| **Capa 3** | `layer3_mid.png` | Skyline de Vegueta y azoteas tradicionales. | 0.20x | Base (Bottom) | **Superior** (Top) |
| **Capa 2** | `layer2_foreground.png` | Muros históricos y balcones de madera. | 0.50x | Base (Bottom) | **Superior** (Top) |
| **Capa 1** | `layer1_detail.png` | Farolas, macetas y bancos. | 1.00x | Base (Bottom) | **Superior** (Top) |

## Guía de Movimiento y Continuidad
- **Fondo Absoluto**: La Capa 4 proporciona una base visual completa sin recortes, ideal para escenas de amanecer festivo.
- **Transparencia Superior Limpia**: Las capas 1, 2 y 3 utilizan croma magenta en la parte superior con bordes cortantes (sharp edges) para evitar la pérdida de colores artísticos.
- **Continuidad**: Todas las capas han sido verificadas para un scroll horizontal fluido sin saltos visuales.

## Recomendaciones para el Motor
Dibujar la Capa 4 primero. El resto de capas deben alinearse a la base del canvas para asegurar que los elementos a ras de suelo (macetas, bancos) queden bien posicionados.
