## 23. Неравенство Чебышёва. Закон больших чисел ##

Пусть $X$ --- r.v., то
$\forall \varepsilon > 0$
$$ \pr [ |X| > \varepsilon ] \leq \frac{1}{\varepsilon^2} \E X $$
так как
$$ \E X^2 = \E X^2 I_{[|X|<\varepsilon]} + \E X^2 I_{[|X| \geq \varepsilon]} \geq 
   \E X^2 I_{[|X| \geq \varepsilon]} \geq
   \varepsilon^2 \E I_{[|X|\geq\varepsilon]} = \varepsilon^2 \pr [|X|\geq\varepsilon] $$
