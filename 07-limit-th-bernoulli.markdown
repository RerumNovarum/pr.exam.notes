## 7. Предельные теоремы в схеме Бернулли ##

Схема Бернулли:

1. $\Omega_j = \{0,1\}$
2. $\SigmaField_j=\{ \{0\}, \{1\}, \emptyset, \Omega_j \}$
3. $\pr\{1\} = p$
4. $\pr\{0\} = 1-p$
5. $\Omega = \{ \omega=(a_1,\ldots,a_n): a_i\in\Omega_j, j=\overline{1,n} \}$
6. $\SigmaField = \{ A = A_1\times A_2\times \ldots\times A_n : A_j\in\SigmaField_j \}$
7. $p_\omega = p_1(a_1) p_2(a_2) \ldots p_n(a_n)$
8. $\pr A = \sum\limits_{\{a_j\in\SigmaField_j, j=\overline{1,n}\}} p_1(a_1)\ldots p_n(a_n)$
9. $\pr\{\omega\} = p^k (1-p)^{n-k}$
10. Обозначим $q=1-p$
11. Обозначим $P_n(m) = {n \choose m} p^m q^{n-m}$

Заметим: $1 = (p+q)^n = \sum_{j=1}^n {n\choose k} p^m q^{n-m} = \sum_m P_n(m)$.


Пусть дана последовательность серий испытаний Бернулли,
в которой $n$-й эксперимент состоит в последовательном проведении $n$ испытаний Бернулли
с вероятностью усреха $p_n$.

### Th. (Пуассона-Бернулли) ###
Если

1. $\lim_{n\to\infty} p_n = 0$
2. $\lim_{n\to\infty} np_n = \lambda > 0$

То $$\lim_{n\to\infty} P_n (m) = e^{-\lambda} \frac{\lambda^m}{m!}$$

TODO: proof

### Th. (Локальная теорема Муавра-Лапласа) ###

Если

1. $\lim_{n\to\infty} p_n = 0$
2. $\lim_{n\to\infty} np_n = \lambda > 0$
3. Величина $x_m = \frac{m-np}{\sqrt {npq}}$ равномерно ограничена по $m$ и $n$

То $$P_n(m) = \frac{1}{\sqrt{2\pi npq}}\exp(-\frac{x_m^2}{2})(1+\alpha_n(m))$$
