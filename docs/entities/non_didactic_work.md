# `non_didactic_work`

Praca wykonywana w określonym miejscu, przedziale czasowym i reguralnie (zawsze w określonym dniu tygodnia). Wykluczana jest praca dydaktyczna, która jest po prostu blokami widocznymi w planie zajęć.

Szczególnie przydatne dla przykładowo pracy pracowników dziekanatów, których godziny i miejsce pracy muszą być znane dla studentów, aby Ci mogli załatwić swoje sprawy. Ewentualnie tak można wprowadzić godziny konsultacji.

## Atrybuty

### `room_id`

Odnośnik do pomieszczenia, gdzie pracownik wykonuje swoją pracę niedydaktyczną. 

Dane pomieszczenie może być wykorzystywane przez kilku pracowników jednocześnie, bo przecież każdy z nich może pracować w nim przy innym stanowisku.

### `employee_id`

Odniesienie do pracownika, który wykonuje swoje obowiązki w rozważanym miejscu i rozważanym czasie.

### `description`

Opis mówiący jaka dokładnie praca jest wykonywana przez rozważanego pracownika w rozważanym miejscu i czasie.

### `day_of_week`

Dzień tygodnia, w którym wykonywana jest praca.

Kodowany przy pomocy liczb od 1 do 7.

| Dzień tygodnia | Liczba |
| -------------- | ------ |
| poniedziałek   | 1      |
| wtorek         | 2      |
| środa          | 3      |
| czwartek       | 4      |
| piątek         | 5      |
| sobota         | 6      |
| niedziela      | 7      |

### `start_hour`

Godzina rozpoczęcia czasu pracy.

### `end_hour`

Godzina zakończenia czasu pracy.
