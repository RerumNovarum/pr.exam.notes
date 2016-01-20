## 2. Вероятность и её свойства ##


### Def. (Функция множеств)
Функцией множеств называется функция вида $\phi : \Omega\mapsto\KK$,
где $\KK$ --- числовое поле, быть может расширенное специальным числом $\infty$.
Далее будут рассматриваться функции множества вида
$\phi : \Omega\mapsto\RR$ или $\phi : \Omega\mapsto [-\infty,+\infty]$

### Def. (Аддитивность) ###
Фукция множеств $\phi : \Omega\mapsto\KK$ называется аддитивной,
если для любого конечного числа
взаимно-непересекающихся множеств $A_{1}, \ldots, A_n \in \Omega$ выполняется равенство
$$ \sum_{j=1}^n \phi A_j = \phi \sum_{j=1}^n A_j $$

### Def. ($\sigma$-аддитивность) ###
Функция множеств $\phi : \Omega\mapsto\KK$ назвыается $\sigma$-аддитивной,
если для любого не более чем счётного числа взаимно-непересекающихся множеств $A_{j}, j\in J$
выполняется равенство
$$ \sum_{j\in J} \phi A_{j} = \phi \sum_{j\in J} A_{j} $$

### Def. (Мера) ###
*Мерой* называется $\sigma$-аддитивная неотрицательная функция множеств \hbox{$\mu : \SigmaField\mapsto [0,+\infty]$},
определённая на $\sigma$-алгебре $\SigmaField$

### Def. (Вероятность) ###
Если мера $\mu$ такова, что $\mu\Omega = 1$, то она называется *нормированной* мерой, или *вероятностью*.
Вероятность будем обозначать символом $\pr$.

### Def. (Измеримое пространство) ###
Измеримым пространством называется пара $(\Omega, \SigmaField)$, состоящая из

* пространства $\Omega$
* $\sigma$-алгебры $\SigmaField$ измеримых множеств из $\Omega$

### Def. (Пространство с вероятностью) ###
Пространством с вероятностью называется тройка $(\Omega, \SigmaField, \pr)$, состоящая из

* пространства $\Omega$
* $\sigma$-алгебры $\SigmaField$ измеримых множеств (событий) из $\Omega$
* вероятности $\pr : \SigmaField\mapsto [0,1]$

### Свойства $\sigma$-аддитивных функций, меры и вероятности ###
Пусть дано измеримое пространство $(\Omega, \SigmaField)$.

* Если некоторая аддитивная функция $\phi$ множеств конечна хотя бы на одном множестве $A\in \SigmaField$,
  то $\phi\emptyset = 0$, так как $\mu A = \mu (A+\emptyset) = \mu A + \mu\emptyset$
Пусть дана некоторая мера $\mu : \SigmaField \mapsto [0,+\infty]$, конечная хотя бы на одном множестве $A$.
Тогда:

* $\mu\emptyset = 0$
  так как мера $\sigma$-аддитивна, а по условию ещё и конечна
* $\mu A\cup B = \mu A + \mu B - \mu AB$
  так как в виду аддитивности и очевидных разбиений множеств $A$ и $A\cup B$
    1. $\mu A       = \mu AB +  \mu A B^\complement$
    2. $\mu A\cup B = \mu B  +  \mu A B^\complement$
    3. $\mu A - \mu A\cup B = \mu AB - \mu B$
    4. $\mu A + \mu B - \mu AB = \mu A\cup B$
* $A_{1}\subset A_{2} \subset\ldots \implies \mu A_{1} \leq \mu A_{2} \leq \ldots$ (монотонность)
    1. $A_2 = A_1 + A_2 A_1^\complement$
    2. $\mu A_2 = \mu A_1 + \mu A_2 A_1^\complement$
    3. $\mu \geq 0$
    4. $\mu A_2 \geq \mu A_1$
    5. $A_n = A_1 + A_2 A_1^\complement + A_3 A_2^\complement A_1^\complement + \ldots$
    6. Далее по индукции
* $\mu \cup A_j \leq \sum \mu A_j$ (суб-аддитивность)
    1. $\cup_{j=1}^\infty A_j = A_1 + A_2 A_1^\complement + \ldots$
    2.  1. $A_2 A_1^\complement \subset A_2$
        2. $A_3 A_2^\complement A_1^\complement \subset A_3$
        3. \ldots
    3.  1. $\mu A_2 \leq \mu (A_2 A_1^\complement)$
        2. $\mu A_n \leq \mu (A_{n-1} A_{n-2} \ldots A_1)$
* $A \subset B \implies \mu (B - A) = \mu B - \mu A$
    1. $A (B-A) = \emptyset$, т.е. $A$ и $B-A$ не пересекаются, а значит имеет место аддитивность:
    2. $A \cup (B-A) = A + (B-A)$
    3. $\mu A\cup (B-A) = \mu A + \mu (B-A)$, то есть:
    5. $\mu (B-A) = \mu A - \mu B$
