## 7. Предельные теоремы в схеме Бернулли ##


Пусть дана последовательность серий испытаний Бернулли,
в которой $n$-й эксперимент состоит в последовательном проведении $n$ испытаний Бернулли
с вероятностью усреха $p_n$.

${\Omega = \prod_{j=1}^n \Omega_j}$, $\Omega_j = \Omega_i$,

$\SigmaField = S(\Omega)$,

$A \subset \Omega_j$,

$A_{n k} = A^\complement \times\ldots\times A^\complement \times A\times A^\complement \times\ldots\times A^\complement$,

$X_{n k} = I_{A_{nk}}$ --- индикатор события $A$ в $i$-м испытании.

$S_n = \sum_{j=1}^n X_k$ --- число появлений события $A$ в $n$-ной серии.

$X_{n k}, k=\overline{1,n}$ --- попарно независимые.

Заметим: $1 = (p_n+q_n)^n = \sum_{j=1}^n {n\choose k} p_n^m q_n^{n-m}$.

$\E X_{n k} = p_n$, $\E X_{nk}^2 = p_n^2$, $\sigma^2 X_{nk} = p_n - p_n^2 = p_n q_n$.

$\E S_n = \sum_{k=1}^n \E X_{nk} = np_n$, $\sigma^2 S_n = \sum_{k=1}^n \sigma^2 X_{nk} = n p_n q_n$.


### Th. (Пуассона-Бернулли) ###
Если

$$
\left\{\begin{aligned}
 & \lim_{n\to\infty} & p_n  &=& 0 &\\
 & \lim_{n\to\infty} & np_n &=& \lambda &> 0 \\
\end{aligned}\right.
$$
То $$\lim_{n\to\infty} \pr [S_n = k] = \frac{\lambda^k}{k!} e^{-\lambda}, \quad k=\overline{1,n}$$

TODO: proof

### Th. (Локальная теорема Муавра-Лапласа) ###

Если

1. $\lim_{n\to\infty} p_n = 0$
2. $\lim_{n\to\infty} np_n = \lambda > 0$
3. Величина $x_m = \frac{m-np}{\sqrt {npq}}$ равномерно ограничена по $m$ и $n$

То $$P_n(m) = \frac{1}{\sqrt{2\pi npq}}\exp(-\frac{x_m^2}{2})(1+\alpha_n(m))$$
$$x \approx \frac{m-np_n}{npq}$$
