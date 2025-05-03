# `studies`

Typ studiów oferowanych przez uczelnię. Przykładowo: inżynierskie studia informatyczne, zaoczne. Najprościej mówiąc jakaś oferta edukacyjna dla kandydatów na studentów.

Dany typ studiów może być realizowany przez dowolnie wiele studentów lub żadnego studenta, gdy w danym momencie się nie otworzyły lub dopiero powstału, a rekrutacja jeszcze trwa.

Ta tabela zawiera oferty edukacyjne zarówno aktualnie dostępne jak i historyczne.

## Atrybuty

### `name`

Nazwa oferty edukacyjnej w języku natualnym. W sumie nie musi być unikalna, bo przykładowo uczelnia może po prostu wprowadzić ofertę o danej nazwie jeszcze raz, ale z odświeżonym programem (zestawem grup kursów).

### `form_of_studies_id`

Odnośnik do formy przebiegu studiów--czyli przykłądowo zaoczne, dzienne, wieczorowe itd.

### `specialization_id`

Odnośnik do specjalizacji jednego z kierunków, która jest nauczana w ramach typu studiów. Przykładowo specjalizacja cyberbezpieczeństwo z kierunku informatyka.

### `degree_id`

Odnośnik do stopnia studiów--np. inżynierskie, magisterskie, doktorskie.

### `price_per_semester`

Cena za semestr studiów w PLN, wyznaczona przez uczelnie. NULL jeżeli dane studia są wyłącznie bezpłatne lub gdy cena nie została jeszcze wyznaczona.

### `start_date`

Data wprowadzenia przez uczelnię danej oferty edukacyjnej.

### `end_date`

Data wycofania przez uczelnię danej oferty edukacyjnej.

### `semesters`

Łączna liczba semestrów przewidziana na realizację studiów. Musi być nieujemna.
