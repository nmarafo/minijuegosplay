# Documento de Diseño Conceptual (GDD): Lucha Canaria - Desafío de Puntales

## 1. Visión General
- **Título**: Lucha Canaria: Desafío de Puntales
- **Género**: Acción / Arcade
- **Plataforma**: Web (HTML5)
- **Audiencia**: Todo público, amantes de los deportes tradicionales.

## 2. Concepto y Jugabilidad
Un duelo de Lucha Canaria en un terrero tradicional. El jugador controla a un luchador que debe derribar al oponente usando mañas (técnicas) y fuerza, manteniendo el equilibrio dentro del círculo de arena.

### Mecánicas Principales:
- **La Cogida**: El inicio del duelo donde los luchadores se agarran.
- **Mañas (Timing)**: Pulsar en el momento justo para realizar una "pardelera", "burra" o "traspié".
- **Equilibrio**: Barra de energía que disminuye al recibir ataques; si llega a cero, el luchador cae.
- **Victoria**: El primero en tocar el suelo con cualquier parte del cuerpo que no sean los pies pierde.

## 3. Guion y Curva Emocional
1. **El Inicio**: Presentación de los luchadores en el terrero. Música de tambor y chácaras.
2. **El Agarre**: Tensión inicial mientras se busca la posición.
3. **El Duelo (Clímax)**: Intercambio rápido de mañas. El público jalea.
4. **La Resolución**: El oponente cae a la arena. El vencedor ayuda a levantarse al vencido (Nobleza Canaria).

## 4. Estética y Estilo Artístico
- **Estilo**: Cartoon (Personajes corpulentos, caricaturizados, con ropa de brega tradicional).
- **Escenario**: Terrero de arena circular con público en las gradas y banderas canarias.
- **Colores**: Tonos tierra (arena), blanco (ropa de brega) y azul/amarillo (decoración).

## 5. Listado de Assets
### Tilesets (`assets/tilesets/`)
- Arena del terrero.
- Bordes de madera del terrero.
- Gradas con público.
- Postes con banderas de las islas.

### Spritesheets (`assets/spritesheets/`)
- **Luchador Protagonista**: Camiseta blanca, pantalón corto remangado.
    - Animaciones: Agarre, Empuje, Esquiva, Maña (Ataque), Caída, Victoria.
- **Luchador Oponente**: Similar pero con colores de equipo distintos (ej. verde).

### Parallax Background (`assets/parallax/`)
- **Capa 4**: Cielo despejado con nubes suaves.
- **Capa 3**: Palmeras y casas tradicionales canarias al fondo.
- **Capa 2**: Gradas distantes con sombras de público.
- **Capa 1**: Elementos cercanos del terrero (jarras de agua, toallas).

## 6. Parámetros Técnicos
- **Ritmo**: Rápido e intenso.
- **Sonido**: Sonido de pies en la arena, gritos de "¡Venga!", música folclórica de fondo.
