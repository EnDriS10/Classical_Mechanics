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
| 10 | [Dos masas unidas por una cuerda y un cono](#problema-10--dos-masas-unidas-por-una-cuerda-y-un-cono) | [`10_ConeStringMasses.ipynb`](10_ConeStringMasses.ipynb) |
| 11 | [Partícula sobre una elipse con muelle](#problema-11--partícula-sobre-una-elipse-con-muelle) | [`11_EllipseSpring.ipynb`](11_EllipseSpring.ipynb) |
| 12 | [Partícula sobre un paraboloide](#problema-12--partícula-sobre-un-paraboloide) | [`12_ParaboloidLagrange.ipynb`](12_ParaboloidLagrange.ipynb) |
| 13 | [Cuentas unidas por un muelle en un aro giratorio](#problema-13--cuentas-unidas-por-un-muelle-en-un-aro-giratorio) | [`13_BeadsRotatingHoop.ipynb`](13_BeadsRotatingHoop.ipynb) |
| 14 | [Teoría de diagramas de fases](#problema-14--teoría-de-diagramas-de-fases) | [`14_PhaseDiagramTheory.ipynb`](14_PhaseDiagramTheory.ipynb) |

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

## Problema 10 — Dos masas unidas por una cuerda y un cono
### Enunciado

Consideramos un sistema sometido a la gravedad en el que dos partículas puntuales de masas $m_1=m_2$ están conectadas por una cuerda de longitud constante $\ell$. Despreciamos la masa de la cuerda y asumimos ausencia de fricción. La partícula de masa $m_2$ está obligada a permanecer sobre la superficie de un cono vertical de ángulo medio $\alpha$ y cuya punta $O$ se encuentra en el origen del sistema de coordenadas (ver figura). La cuerda pasa a través de un agujero en la punta $O$ del cono, de manera que la partícula de masa $m_1$ cuelga libremente dentro del cono.

![Dos masas unidas por una cuerda y un cono](https://i.imgur.com/U9MtsNT.png)

## Problema 11 — Partícula sobre una elipse con muelle
### Enunciado

Una partícula de masa $m$ está obligada a moverse, sin fricción, sobre una elipse en un plano vertical. La ecuación de la elipse es $x=a\cos\theta$, $y=b\sin\theta$, donde $a$ y $b$ son dos constantes tales que $a\ge b>0$. El eje $y$ corresponde a la dirección vertical. La partícula está sometida a la gravedad y está unida al origen $O$ por un muelle de constante elástica $k$. La energía potencial del muelle se escribe $\frac12 kr^2$, donde $r$ es la distancia entre $O$ y la posición de la partícula.

![Partícula sobre una elipse con muelle](https://i.imgur.com/CQBHk6z.png)

## Problema 12 — Partícula sobre un paraboloide
### Enunciado

Una partícula de masa $m$ sometida a la gravedad, se desliza sin fricción sobre la superficie de un paraboloide de revolución vertical cuya ecuación es $r^2=az$, donde $a$ es una constante positiva y $z$ es el eje vertical.

![Partícula sobre un paraboloide](https://i.imgur.com/laULijd.png)

## Problema 13 — Cuentas unidas por un muelle en un aro giratorio
### Enunciado

Consideramos un sistema compuesto por dos partículas (cuentas de masa $m$), un alambre circular (aro de radio $R$) y un muelle (con constante elástica $k$ y longitud en equilibrio $2r_0$, donde $r_0<R$). Las cuentas están unidas por el muelle y se deslizan sin fricción sobre el aro. El sistema se representa en la figura, que también indica los ejes cartesianos $y$ y $z$ de un sistema de coordenadas cuyo origen está en el centro $O$ del aro. El plano $yz$ es horizontal y, consecuentemente, la gravedad actúa en la dirección del eje $x$. A todo momento, se impone que las dos cuentas tengan la misma coordenada $z$, la cual puede variar con el tiempo.

Consideramos que el aro gira alrededor del eje $z$ del sistema de referencia inercial $\{O,(x,y,z)\}$ con una velocidad angular constante $\omega$.

![Cuentas unidas por un muelle en un aro giratorio](https://i.imgur.com/PVB7b60.png)

## Problema 14 — Teoría de diagramas de fases
### Enunciado

Explicar qué es el **espacio de fases** de un sistema hamiltoniano y cómo se dibuja su diagrama de fases de tres formas distintas: despejando $p(q)$, mediante las curvas de nivel de $H(q,p)$ y integrando numéricamente las ecuaciones de Hamilton. Clasificar los puntos fijos (centros y sillas) a partir del Jacobiano y establecer la relación entre el potencial efectivo $U_{eff}$ y el diagrama de fases: puntos de retorno, región prohibida, órbitas ligadas y separatriz.

Aplicar la teoría dibujando, para distintas energías, el potencial efectivo y el diagrama de fases de los siguientes sistemas:

- **(a)** Una partícula de masa $m$ en el eje $x$ bajo el potencial $U(x)=-(x/a)^2U_0$ si $|x|\le a$ y $U=+\infty$ si $|x|>a$, con $E>0$, $E<0$ y $E=0$.
- **(b)** Una partícula de masa $m$ en el espacio bajo el potencial $U(r)=-k/r$, con $\varphi=0$, $p_\theta$ constante y distintas energías $E<0$, $E=0$ y $E>0$. Representar las proyecciones $(r,p_r)$ y $(\theta,p_\theta)$ y la trayectoria real.
- **(c)** Una cuenta de masa $m$ sobre un alambre helicoidal fijo $x=a\cos\theta$, $y=a\sin\theta$, $z=b\theta$ bajo la gravedad, con $\theta(0)=0$ y $\dot\theta(0)>0$.
- **(d)** Una masa $m$ en caída libre con la coordenada $x$ medida hacia abajo, para las condiciones iniciales $(x_0,p_0)=(0,0),\,(X,0),\,(X,P),\,(0,P)$.

Por último, calcular simbólicamente el paréntesis de Poisson $[A,H]$ con $A=x\dot y-y\dot x$ para el Lagrangiano $L=\frac12\left(\dot x^2/x+\dot y^2/y\right)$.

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
├── 09_HelicalWire.ipynb
├── 10_ConeStringMasses.ipynb
├── 11_EllipseSpring.ipynb
├── 12_ParaboloidLagrange.ipynb
├── 13_BeadsRotatingHoop.ipynb
└── 14_PhaseDiagramTheory.ipynb
```
