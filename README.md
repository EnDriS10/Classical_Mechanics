# Problemas de mecánica resueltos numéricamente

Colección de problemas de mecánica clásica que se resuelven **numéricamente** con Python (NumPy + Matplotlib) en cuadernos de Jupyter. En cada problema se parte de las ecuaciones del movimiento (Euler-Lagrange / Newton), se integran con un método de paso fijo y se visualiza el resultado con una animación.

## Índice

| Nº | Problema | Cuaderno |
|----|----------|----------|
| 1 | [Péndulo doble](#problema-1--péndulo-doble) | [`01b_DoublePendulum.ipynb`](01b_DoublePendulum.ipynb) |
| 2 | [Péndulo con soporte en movimiento circular](#problema-2--péndulo-con-soporte-en-movimiento-circular) | [`02_CircularMotionPendulum.ipynb`](02_CircularMotionPendulum.ipynb) |

---

## Problema 1 — Péndulo doble

![Péndulo doble](https://i.imgur.com/w6ynZT3.png)

### Enunciado

Un péndulo doble está formado por dos masas puntuales $m_1$ y $m_2$ unidas mediante varillas rígidas y sin masa de longitudes $l_1$ y $l_2$. La primera varilla cuelga de un pivote fijo situado en el origen y la segunda cuelga de la masa $m_1$. El sistema se mueve en un plano vertical bajo la acción de la gravedad $\vec g$. Los ángulos $\theta_1$ y $\theta_2$ que forman las varillas con la vertical se toman como coordenadas generalizadas (criterio del cuaderno: eje $y$ hacia arriba y ángulos medidos desde el semieje $+y$).

**Resuelve numéricamente el problema:**

1. Escribe las ecuaciones de Euler-Lagrange del sistema y despeja las aceleraciones angulares $\ddot\theta_1$ y $\ddot\theta_2$ como función de $(\theta_1,\theta_2,\dot\theta_1,\dot\theta_2)$. Como las dos ecuaciones están acopladas, resuelve en cada paso el sistema lineal $A\,\vec{\ddot\theta}=\vec B$.
2. Integra las ecuaciones del movimiento con un método de paso fijo (Euler predictor + Heun corrector) para obtener $\theta_1(t)$, $\theta_2(t)$, $\dot\theta_1(t)$ y $\dot\theta_2(t)$.
3. Calcula las posiciones cartesianas de ambas masas, $(x_1,y_1)$ y $(x_2,y_2)$, a partir de los ángulos.
4. Representa la trayectoria de $m_2$ y genera una animación del movimiento del péndulo con estela.
5. Estudia cómo cambia el movimiento al variar las condiciones iniciales y comprueba la sensibilidad característica del comportamiento caótico.

**Datos y condiciones iniciales utilizados**

| Parámetro | Valor |
|-----------|-------|
| $m_1 = m_2$ | 1 kg |
| $l_1 = l_2$ | 2 m |
| $g$ | 9,8 m/s² |
| $\theta_1(0) = \theta_2(0)$ | $\pi/2$ |
| $\dot\theta_1(0) = \dot\theta_2(0)$ | 0 |
| Paso temporal $\Delta t$ | $10^{-3}$ s |
| Número de pasos $N$ | $10^{6}$ |

---

## Problema 2 — Péndulo con soporte en movimiento circular

![Péndulo con soporte en movimiento circular](https://i.imgur.com/UHFKpKG.png)

### Enunciado

El punto de donde cuelga un péndulo simple de longitud $b$ se mueve a lo largo de un círculo sin masa de radio $a$ que gira sobre sí mismo con una velocidad angular constante $\omega$. El ángulo $\theta$ es el que forma el hilo con la vertical, según la figura.

**Resuelve numéricamente el problema:**

1. Obtén la ecuación del movimiento de la masa $m$ para el ángulo $\theta$:

   $$\ddot\theta = -\frac{1}{b}\Big[\,g\sin\theta - a\,\omega^{2}\cos(\theta-\omega t)\Big]$$

2. Integra numéricamente esta ecuación (Euler predictor + Heun corrector) para obtener $\theta(t)$ y $\dot\theta(t)$ en el intervalo $[0, t_f]$.
3. A partir de $\theta(t)$, calcula las **componentes cartesianas de la posición** de la masa:

   $$x_m = a\cos\omega t + b\sin\theta, \qquad y_m = a\sin\omega t - b\cos\theta$$

   y, a partir de ellas, las componentes cartesianas de su **velocidad** y de su **aceleración**.
4. Representa la **aceleración angular** $\ddot\theta(t)$ y la trayectoria de la masa.
5. Genera una animación que muestre el círculo de radio $a$, el radio que une su centro con el punto de suspensión, el hilo del péndulo y la estela de la masa.

**Datos y condiciones iniciales utilizados**

| Parámetro | Valor |
|-----------|-------|
| $a$ | 1 m |
| $b$ | 3 m |
| $\omega$ | 0,5 rad/s |
| $g$ | 9,8 m/s² |
| $\theta(0)$ | $\pi/4$ |
| $\dot\theta(0)$ | 0 |
| Tiempo total $t_f$ | 15 s |
| Paso temporal $\Delta t$ | $10^{-6}$ s |

---

## Método numérico

En ambos problemas se usa el mismo esquema de paso fijo, de tipo **predictor-corrector** (Euler + Heun):

1. **Predictor (Euler):**
   $\dot\theta^{\,pred}_{i+1}=\dot\theta_i+\ddot\theta_i\,\Delta t, \qquad \theta^{\,pred}_{i+1}=\theta_i+\dot\theta_i\,\Delta t$
2. **Corrector (Heun):**
   $\theta_{i+1}=\theta_i+\tfrac12(\dot\theta_i+\dot\theta^{\,pred}_{i+1})\Delta t, \qquad \dot\theta_{i+1}=\dot\theta_i+\tfrac12(\ddot\theta_i+\ddot\theta^{\,pred}_{i+1})\Delta t$

donde la aceleración $\ddot\theta$ se evalúa con las ecuaciones del movimiento de cada problema.

## Requisitos

- Python 3.9 o superior
- `numpy`
- `matplotlib`
- `jupyter` (o JupyterLab / Google Colab)

```bash
pip install numpy matplotlib jupyter
```

## Uso

```bash
git clone <URL-de-este-repositorio>
cd <nombre-del-repositorio>
jupyter notebook
```

Abre el cuaderno del problema que quieras y ejecuta las celdas en orden. La última celda reproduce la animación dentro del propio cuaderno (`HTML(anim.to_jshtml())`).

Los parámetros de la animación (`T_anim`, `fps`, `speed`, `trail_s`) se pueden modificar al inicio de la celda de animación.

## Estructura del repositorio

```
.
├── README.md
├── 01b_DoublePendulum.ipynb
└── 02_CircularMotionPendulum.ipynb
```
