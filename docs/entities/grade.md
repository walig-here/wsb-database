# `grade`

Oceny otrzymywane przez studenta w ramach studiów i w wyniku jego uczestnictwa w grupi zajęciowej.

Osobą wystawiającą oceną jest w domyśle główny prowadzący grupy zajęciowej.

Ocena możę być cząstkowa lub końcowa. Przy czym w ramach danej grupy zajęciowej tylko jedna ocena może być oceną końcową.

## Atrybuty

### `student_studies_id`

Odniesnie do danych nt. studiów, na których student otrzymał ocenę.

### `lesson_group_id`

Odniesienie do grupy zajęć, na której student otrzymał ocenę.

### `grade_value_id`

Odnośnik do wartości samej oceny.

### `description`

Opis oceny. Przykładowo określający za co została ona wystawiona: kolokwium 1, odpowiedź ustna, praca na zajeciach itd.

### `is_final`

Wartość logiczna określająca czy ocena jest oceną końcową podsumowującą pracę studenta na wszystkich zajęciach w danej grupie zajęciowej.

Musi być unikalna wraz z odnośnikiem do danych nt. uczestnictwa studenta w grupie zajęciowej. W ten sposób zapewnione zostanie, że dla danego studenta w grupie zajęciowej istnieć będzie tylko jedna ocena końcowa.

### `creation_date`

Data wpisania oceny.
