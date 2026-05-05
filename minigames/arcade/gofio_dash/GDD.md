# Documento de Diseño Conceptual (GDD): Gofio Dash - El Molino de Viento

## 1. Visión General
- **Título**: Gofio Dash: El Molino de Viento
- **Género**: Arcade / Endless Runner (Vertical/Horizontal)
- **Plataforma**: Web (HTML5)
- **Estilo Artístico**: Cartoon

## 2. Concepto y Jugabilidad
El jugador controla a un molinero que debe recolectar sacos de grano tostado y evitar obstáculos en un molino de viento tradicional canario para producir el gofio perfecto.

### Mecánicas:
- **Salto y Deslizamiento**: Evitar piedras de molino y ráfagas de viento.
- **Power-ups**: Pellas de gofio que dan velocidad o invulnerabilidad temporal.
- **Puntuación**: Basada en la cantidad de grano recolectado.

## 3. Guion y Curva Emocional (6 Fases)
1. **El Inicio**: El molinero llega al molino al amanecer. Sensación de paz y preparación.
2. **El Incidente Incitador**: El viento empieza a soplar con fuerza inusual, las aspas giran locamente y los sacos empiezan a volar. ¡Hay que salvar la producción!
3. **El Viaje**: El jugador corre por las plataformas del molino, saltando entre engranajes y recolectando sacos. Tensión creciente.
4. **El Punto Bajo**: Una gran piedra de molino se suelta y bloquea el camino. El tiempo se agota y la fatiga aparece.
5. **El Clímax**: El molinero alcanza la cima del molino bajo una tormenta de arena, logrando estabilizar las aspas mientras recoge el último saco dorado.
6. **La Resolución**: El molino vuelve a la calma. Se produce el gofio y se celebra con una fiesta tradicional. Victoria y satisfacción.

## 4. Parámetros por Fase
- **Fase 1-2**: Iluminación cálida (amanecer). Música suave de timple. Ritmo lento.
- **Fase 3-4**: Iluminación ámbar, sombras dinámicas. Música de percusión rápida. Ritmo frenético.
- **Fase 5**: Iluminación dramática, ráfagas de partículas. Música orquestal intensa.
- **Fase 6**: Colores vibrantes (Día de Canarias). Música folclórica alegre.

## 5. Listado Exhaustivo de Assets
### Tilesets (`assets/tilesets/`)
- Interior del molino (madera, engranajes, piedra).
- Exterior (muros de piedra blanca, aspas).
- Decoraciones (jarras, sacos, herramientas).

### Spritesheets (`assets/spritesheets/`)
- **Molinero (Protagonista)**: Vestimenta tradicional, gorra de lana.
    - Animaciones: Idle, Run, Jump, Slide, Fall, Victory.
- **Enemigo 1: Ráfaga Mala**: Nube antropomórfica con cara de enfado.
    - Animaciones: Float, Attack (soplar), Poof (derrota).
- **Enemigo 2: Piedra Rodante**: Piedra de molino con ojos.
    - Animaciones: Roll, Spin, Break.

### UI y VFX (`assets/ui/`)
- Barra de energía (forma de saco).
- Contador de sacos (icono de grano).
- Efecto de partículas de harina al saltar.
- Destello de "Pella de Gofio" power-up.

## 6. Verificación de Diseño
Este documento cumple con los requisitos del `game_designer_skill.md`:
- [x] Recopilación de datos incluida.
- [x] Curva emocional de 6 fases detallada.
- [x] Parámetros de iluminación/sonido por fase.
- [x] Listado exhaustivo de assets (Protagonista + 2 Enemigos).
