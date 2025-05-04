# `lesson`

Jedna jednostka zajęciowa, która odbwywa się w ramach grupy zajęciowej. Odbywa się w określonym miejscu, czasie i jest prowadzona przez określonego pracownika dydaktycznego.

Przewiduje się możliwość zmiany prowadzącego, odwołania czy też prowadzenia zajęć w formie zdalnej.

## Atrybuty

### `date`

Data odbycia się zajęć.

### `star_hour`

Godzina rozpoczęcia się zajęć.

### `end_hour`

Godzina zakończenia się zajęć.

### `lesson_group_id`

Odnośnik do grupy zajęciowej, której zajęcia są częścią.

### `teacher_employee_id`

Pracownik dydaktyczny prowadzący zajęcia.

Teoretycznie redundantne z polem `lead_teacher_employee_id` z tabeli `lesson_group`, które wskazuje domyślnego prowadzącego każdych zajęć w grupie. Jednakże to pole jest przydatne w przypadku kiedy niezbędne jest wskazanie zastępcy na dany termin zajęć.

### `canceled`

Wartość logiczna, która określa czy dane zajęcia są odwołane.

### `room_id`

Odniesienie do pomieszczenia dydaktycznego, w którym odbywają się zajęcia. Ustawione na NULL kiedy zajęcia są zdalne.

To pole nie możę być NULL gdy nie jest ustawiony link do zajęć zdalnych. 

Niedopuszczalna jest wartość nie NULL-owa, gdy link do zajęć zdalnych jest nie NULL-owa.

### `virtual_lesson_id`

Link do zajęć zdalnych. Ustawione na NULL, jeżeli zajęcia są stacjonarne.

To pole nie może być NULL, gdy nie jest ustawiony pokój do zajęć stacjonarnych.

Niedopuszczalna jest wartość nie NULL-owa, jeżeli odnośnik do pokoju zajęc stacjonarnych jest ni NULL-owy.
