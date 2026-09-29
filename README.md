# Problemas de mecánica resueltos numéricamente

Colección de problemas de mecánica clásica que se resuelven **numéricamente** con Python.

## Índice

| Nº | Problema | Cuaderno |
|----|----------|----------|
| 1 | [Péndulo doble](#problema-1--péndulo-doble) | [`01b_DoublePendulum.ipynb`](01b_DoublePendulum.ipynb) |
| 2 | [Péndulo con soporte en movimiento circular](#problema-2--péndulo-con-soporte-en-movimiento-circular) | [`02_CircularMotionPendulum.ipynb`](02_CircularMotionPendulum.ipynb) |

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
