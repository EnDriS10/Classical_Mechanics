# Problemas de mecánica resueltos numéricamente

Colección de problemas de mecánica clásica que se resuelven **numéricamente** con Python.

## Índice

| Nº | Problema | Cuaderno |
|----|----------|----------|
| 1 | [Péndulo doble](#problema-1--péndulo-doble) | [`01b_DoublePendulum.ipynb`](01b_DoublePendulum.ipynb) |
| 2 | [Péndulo con soporte en movimiento circular](#problema-2--péndulo-con-soporte-en-movimiento-circular) | [`02_CircularMotionPendulum.ipynb`](02_CircularMotionPendulum.ipynb) |
| 3 | [Masa en el borde de una rueda](#problema-3--masa-en-el-borde-de-una-rueda) | [`03_MassInsideWeel.ipynb`](03_MassInsideWeel.ipynb) |
| 4 | [Cuenta en un alambre giratorio](#problema-4--cuenta-en-un-alambre-giratorio) | [`04_ParticlePathZ.ipynb`](04_ParticlePathZ.ipynb) |
| 5 | [Masa en un muelle en un plano vertical](#problema-5--masa-en-un-muelle-en-un-plano-vertical) | [`05_MassOnSpringVerticalPlane.ipynb`](05_MassOnSpringVerticalPlane.ipynb) |
| 6 | [Regulador con muelle](#problema-6--regulador-con-muelle) | [`06_CrazyRegulator.ipynb`](06_CrazyRegulator.ipynb) |
| 7 | [Partícula sobre una superficie cilíndrica](#problema-7--partícula-sobre-una-superficie-cilíndrica) | [`07_HamiltonianCylinder.ipynb`](07_HamiltonianCylinder.ipynb) |
| 8 | [Espacio de fases de una masa en caída libre](#problema-8--espacio-de-fases-de-una-masa-en-caída-libre) | [`08_FreeFallPhaseSpace.ipynb`](08_FreeFallPhaseSpace.ipynb) |
| 9 | [Cuenta en un alambre helicoidal](#problema-9--cuenta-en-un-alambre-helicoidal) | [`09_HelicalWire.ipynb`](09_HelicalWire.ipynb) |

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

## Problema 5 — Masa en un muelle en un plano vertical
### Enunciado

Un muelle sin masa y de longitud en reposo $l_0$ tiene en un extremo una masa $m$ y del otro está fijado al techo. El movimiento tiene lugar en un plano vertical.

![Masa en un muelle en un plano vertical](https://i.imgur.com/1uUs2SX.png)

## Problema 6 — Regulador con muelle
### Enunciado

Consideramos un regulador formado por dos bolas de masa $m$. Cuatro varillas articuladas de longitud $l$ y de masa nula se unen en un punto fijo $O$ y en un anillo $A$ que puede deslizarse a lo largo de un eje vertical. Un muelle de constante elástica $k$ y de longitud natural $l_0$ une el punto fijo $O$ y el anillo $A$. El sistema gira alrededor del eje vertical con velocidad angular $\omega$ constante. Se puede despreciar el rozamiento.

![Regulador con muelle](https://i.imgur.com/DfkZcBw.png)

## Problema 7 — Partícula sobre una superficie cilíndrica
### Enunciado

Utilizar el formalismo Hamiltoniano para encontrar las ecuaciones de movimiento de una partícula obligada a moverse sobre una superficie cilíndrica de ecuación $x^2+y^2=R^2$. La partícula está sometida a una fuerza, $\vec F=-k\vec r$, dirigida hacia el origen y de módulo proporcional a $r$.

![Partícula sobre una superficie cilíndrica](https://i.imgur.com/uBkxn8B.png)

## Problema 8 — Espacio de fases de una masa en caída libre
### Enunciado

Escribir las ecuaciones de Hamilton para una masa $m$ obligada a moverse únicamente en la dirección vertical y sujeta a la atracción gravitacional. Utilizar la coordenada $x$, medida hacia abajo desde un origen convenientemente escogido, y su momento conjugado $p$. Describir las órbitas en el espacio de fase y en particular obtener esquemáticamente las órbitas desde un punto inicial en $t_0=0$ hasta un tiempo posterior $t$ para las siguientes condiciones iniciales:

- (a) La masa se suelta en reposo desde $x=0$: $x_0=p_0=0$.
- (b) La masa se suelta en reposo desde $x=X$: $x_0=X,\ p_0=0$.
- (c) La masa se lanza desde $x=X$ con momento inicial $p=P$: $x_0=X,\ p_0=P$.
- (d) La masa se lanza desde $x=0$ con momento inicial $p=P$: $x_0=0,\ p_0=P$.


## Problema 9 — Cuenta en un alambre helicoidal
### Enunciado

Consideramos un alambre, que permanece fijo, de forma helicoidal, $x=a\cos\theta$, $y=a\sin\theta$, $z=b\theta$, donde $\theta$ es un parámetro real y $a$, $b$ son constantes positivas. El eje $z$ está dirigido verticalmente hacia arriba. Una cuenta de masa $m$, sometida a la gravedad, puede deslizarse libremente en el alambre.


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
├── 04_ParticlePathZ.ipynb
├── 05_MassOnSpringVerticalPlane.ipynb
├── 06_CrazyRegulator.ipynb
├── 07_HamiltonianCylinder.ipynb
├── 08_FreeFallPhaseSpace.ipynb
└── 09_HelicalWire.ipynb
```
