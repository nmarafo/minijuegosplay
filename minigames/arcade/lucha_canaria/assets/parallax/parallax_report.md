# Informe Técnico: Fondo de Paralaje - Lucha Canaria

Este informe describe las capas del terrero tradicional para el juego "Lucha Canaria: Desafío de Puntales".

## Estructura de Capas

| Capa | Nombre Archivo | Descripción | Velocidad |
| :--- | :--- | :--- | :--- |
| **Capa 4** | `layer4_far.png` | Cielo azul despejado de las islas. | 0.1x |
| **Capa 3** | `layer3_mid.png` | Siluetas de palmeras y casas tradicionales blancas. | 0.3x |
| **Capa 2** | `layer2_foreground.png` | Gradas del terrero con público y banderas. | 0.7x |
| **Capa 1** | `layer1_detail.png` | Detalles cercanos: jarras de agua y toallas. | 1.0x |

## Recomendaciones
- Alinear por la base.
- El terrero (suelo) debe estar integrado en la Capa 1 o ser un tile independiente.
