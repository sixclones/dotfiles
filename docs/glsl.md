# Fonctions

## step

@p1: limite/seuil\
@p2: valeur à tester

```glsl
step(0.5,0.2) -> 0.0
step(0.5,0.7) -> 1.0
```

## smoothstep

@p1 & @p2: bornes\
@p3: valeur d'interpolation

```glsl
smoothstep(0.1, 0.9, 0.0) -> 0.0
smoothstep(0.1, 0.9, 0.5) -> 0.5
```
