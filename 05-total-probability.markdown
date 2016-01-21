## 5. Закон полной вероятности. Формула Байеса ##

### Формула полной вероятности ###
Пусть $\{ A_j, j\in J\}$ --- *разбиение* пространства $\Omega$
(*полная группа несовместных событий*).
Тогда
$\forall B \quad B = \sum_j B A_j$, а потому
$\forall B \quad \pr B = \sum_j \pr B A_j$.
Но $\pr B A_j = \frac{\pr B A_j}{\pr A_j} \pr A_j = \pr A_j \pr_{A_j} B$.
$$ \pr B = \sum_j \pr_{A_j} B \pr A_j $$

### Формула Байеса ###
Пусть даны два события $A, B$, такие что $\pr A, \pr B > 0$.
Тогда, как установлено выше:

1. $\pr AB = \frac{\pr AB}{\pr B} \pr B = \pr B \pr_B A$
2. $\pr AB = \frac{\pr AB}{\pr A} \pr A = \pr A \pr_A B$
3. $\pr B \pr_B A = \pr A \pr_A B$
4. $\pr_B A = \frac{\pr A \pr_A B}{\pr B}$

Последняя формула носит имя формулы Байеса: $$\pr_B A = \frac{\pr A \pr_A B}{\pr B}$$

Более того, если $A_1, A_2, \ldots, A_n$ --- разбиение $\Omega$, то

1. $\pr_{A_j} B = \frac{\pr B \pr_B A_j}{\pr A_j}$
2. $\pr B   = \sum_j \pr A_j \pr_{A_j} B$
3. $\pr_B A_k = \frac{\pr A_k B}{\pr B} = \frac{\pr B \pr_{A_k} B}{\pr B} = \frac{\pr B \pr_{A_k} B}{\sum_j \pr A_j \pr_{A_j} B}$

Это --- расширенная формула Байеса: $$\pr_B A_k = \frac{\pr B \pr_{A_k} B}{\sum_j \pr A_j \pr_{A_j} B}$$


События $A_1, A_2, \ldots, A_n$, образующие разбиение $\Omega$
называют *гипотезами*, вероятность $\pr A_i$ называют *априорной* вероятностью гипотезы,
а условные вероятности $\pr_B A_i$ называют *апостериорными* вероятностями гипотез $A_i$
при наступлении события $B$
