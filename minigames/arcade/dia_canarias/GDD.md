# Documento de Diseño Conceptual (GDD): El Salto del Pastor - Edición Día de Canarias

## 1. Visión General
- **Título**: El Salto del Pastor: Desafío Canario
- **Género**: Arcade / Infinite Jumper
- **Plataforma**: Web (HTML5)
- **Audiencia**: Todo público, amantes de la cultura canaria.

## 2. Concepto y Jugabilidad
Un pastor canario debe ascender por los riscos de las islas para llegar a la celebración del Día de Canarias. Utilizará su "garrote" para realizar saltos acrobáticos (salto del pastor) esquivando obstáculos y recolectando productos típicos.

### Mecánicas Principales:
- **Salto con Garrote**: El jugador mantiene pulsado para cargar la potencia del salto.
- **Recolección**: Queso majorero, plátanos de Canarias y gofio para obtener puntos y turbo.
- **Obstáculos**: Viento fuerte (alisios), cuervos y piedras sueltas.

## 3. Guion y Curva Emocional
1. **El Inicio (Calma)**: Paisaje soleado en las faldas del Teide. Música de timple alegre.
2. **El Incidente**: Un aviso de que la fiesta ha comenzado y el pastor llega tarde.
3. **El Viaje (Tensión)**: El ascenso se complica con riscos más estrechos y mayor velocidad.
4. **El Punto Bajo**: Una tormenta de arena (calima) dificulta la visión.
5. **El Clímax**: Salto final épico sobre un barranco para llegar a la plaza del pueblo.
6. **La Resolución**: Celebración con música, baile y comida canaria.

## 4. Estética y Estilo Artístico
- **Estilo**: Cartoon (Colores vibrantes, personajes expresivos, líneas claras).
- **Iluminación**: Luz cálida de atardecer canario.
- **Paleta de Colores**: Azules intensos (mar), amarillos (sol/arena), verdes (laurisilva).

## 5. Listado de Assets
### Tilesets (`assets/tilesets/`)
- Bloques de piedra volcánica.
- Plataformas de madera.
- Vegetación (Pino canario, Cardón, Tabaiba).
- Decoraciones de fiesta (banderitas canarias).

### Spritesheets (`assets/spritesheets/`)
- **Protagonista**: Pastor con traje típico y garrote.
    - Animaciones: Idle, Preparando Salto, En el aire, Aterrizaje, Caída.
- **Enemigo 1**: Cuervo (vuelo lateral).
- **Enemigo 2**: Cabra revoltosa (obstáculo en plataformas).

### Parallax Background (`assets/parallax/`)
- **Capa 4**: Silueta del Teide y cielo azul/naranja.
- **Capa 3**: Mar y otras islas en el horizonte.
- **Capa 2**: Riscos y nubes bajas.
- **Capa 1**: Vegetación cercana y rocas en primer plano.

## 6. Parámetros Técnicos
- **Ritmo**: Creciente.
- **Sonido**: Efectos de viento, sonido de madera golpeando piedra, y música folclórica animada.
