# `position`

Typ pozycji, jaka może być piastowana przez pracownika uczelni.

Nie musi być to koniecznie stanowisko dydaktyczne a dowolne: administracyjne, badawcze, techniczne, reprezentacyjne itd.

## Atrybuty

### `name`

Nazwa stanowiska. Zwykle równoznacza z tą umieszczaną w umowie zawieranej z pracownikiem przy przydzielaniu mu danego stanowiska.

### `min_salary`

Dolna granica widełek płacowych. Może być NULL jeżeli uczelnia w danym momencie nie wyznaczyła jeszcze takiego ograniczenia.

### `max_salary`

Górna granicza widełek płacowych. Może być NULL jeżeli uczelnia w danym momencie nie wyznaczyła jeszcze takiego ograniczenia.

### `didactical`

Wartość logiczna określająca, czy dana pozycja zakłada prowadzenie zajęć dydaktycznych.

Pozwoli to na odfiltorwanie tylko tych pracowników, który następnie można oddelegować do prowadzenia zajęć ze studentami.

### `despription`

Opis pozycji. Przykładowo krótka charaktertystyka obowiązków i zadań.
