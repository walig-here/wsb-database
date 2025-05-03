# `lesson_group`

Grupa zajęciowa z danego kursu działająca w danym roczniku. Jest ona prowadzona przez określonego, głównego pracownika dydaktycznego i uczestniczy w niej wielu studentów, do niej wpisanych.

## Atrybuty

### `lead_teacher_employee_id`

Odniesienie do głównego pracownika dydaktycznego, który domyślnie prowadzi wszystkie zajęcia danej grupy. 

To rówież on jest uznawany za autora ocen wystawianych w ramach pracy studentów w tejże grupie.

### `course_year_id`

Rocznik kursu, w ramach którego działa grupa zajęciowa.

### `resources_url`

Link do materiałów on-line dostępnych dla uczestników grupy. Może być NULL gdy główny prowadzący nie uwzględnił materiałów online w swoim sposobie prowadzenia zajęć.

### `max_students`

Maksymalna liczba studentów mogących być wpisanymi do grupy. Ustawiona na NULL, gdy taki limit nie istnieje.
