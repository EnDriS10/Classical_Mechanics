# Problemas de mecánica resueltos numéricamente

Colección de problemas de mecánica clásica que se resuelven **numéricamente** con Python.

## Índice

| Nº | Problema | Cuaderno |
|----|----------|----------|
| 1 | [Péndulo doble](#problema-1--péndulo-doble) | [`01b_DoublePendulum.ipynb`](01b_DoublePendulum.ipynb) |
| 2 | [Péndulo con soporte en movimiento circular](#problema-2--péndulo-con-soporte-en-movimiento-circular) | [`02_CircularMotionPendulum.ipynb`](02_CircularMotionPendulum.ipynb) |
| 3 | [Masa en el borde de una rueda](#problema-3--masa-en-el-borde-de-una-rueda) | [`03_MassInsideWeel.ipynb`](03_MassInsideWeel.ipynb) |
| 4 | [Cuenta en un alambre giratorio](#problema-4--cuenta-en-un-alambre-giratorio) | [`04_ParticlePathZ.ipynb`](04_ParticlePathZ.ipynb) |

---

## Problema 1 — Péndulo doble
### Enunciado

Un péndulo doble está formado por dos masas puntuales $m_1$ y $m_2$ unidas mediante varillas rígidas y sin masa de longitudes $l_1$ y $l_2$. La primera varilla cuelga de un pivote fijo situado en el origen y la segunda cuelga de la masa $m_1$. El sistema se mueve en un plano vertical bajo la acción de la gravedad $\vec g$. Los ángulos $\theta_1$ y $\theta_2$ que forman las varillas con la vertical se toman como coordenadas generalizadas.

![Péndulo doble](https://i.imgur.com/w6ynZT3.png)

---

## Problema 2 — Péndulo con soporte en movimiento circular
### Enunciado

El punto de donde cuelga un péndulo simple de longitud $b$ se mueve a lo largo de un círculo sin masa de radio $a$ que gira sobre sí mismo con una velocidad angular constante $\omega$. El ángulo $\theta$ es el que forma el hilo con la vertical, según la figura.

![Péndulo con soporte en movimiento circular](https://i.imgur.com/UHFKpKG.png)

---

## Problema 3 — Masa en el borde de una rueda
### Enunciado

Consideramos una masa $m$ que está fija en el borde de una rueda de radio $R$ que rueda sin deslizar respecto al suelo. Despreciamos la masa de la rueda, excepto por una masa $M$ situada en su centro. El sistema está sometido a la gravedad terrestre y la rueda se mueve en un plano vertical.

![Masa en el borde de una rueda](https://i.imgur.com/SPlbwRR.png)

## Problema 4 — Cuenta en un alambre giratorio
### Enunciado

Consideramos un alambre cuya curva verifica la ecuación $z(x)=b\,(x/a)^\gamma$, donde $a$, $b$ y $\gamma$ son constantes y $\gamma>1$. El alambre está en rotación a velocidad angular $\omega$ constante alrededor del eje vertical $z$. Una cuenta de masa $m$ se puede desplazar sin rozamiento a lo largo del alambre bajo el efecto de la gravedad.

![Cuenta en un alambre giratorio](https://i.imgur.com/1QnBX14.png)

## Uso

```bash
git clone <URL-de-este-repositorio>
cd <nombre-del-repositorio>
jupyter notebook
```

## Estructura del repositorio

```
.
├── README.md
├── 01a_DoublePendulum.m
├── 01b_DoublePendulum.ipynb
├── 02_CircularMotionPendulum.ipynb
├── 03_MassInsideWeel.ipynb
└── 04_ParticlePathZ.ipynb
```
