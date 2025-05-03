# `specialization_course_group`

Grupa kursów realizowana dla danej oferty edukacyjnej i prowadzona przez określonego dydaktyka-opiekuna.

Przykładowo grupa kursów "Programowanie Obiektowe" o tym samym programie może być wykładana dla kierunku "Cyberbezpieczeństwo, Informatyka Stosowana (inżynier, zaoczna)" przez wykładowcę Jana Filipiuka, a dla kierunku "Projektowanie Systemów Informacycznych, Informatyka Techniczna (inżynier, stacjonarna)" przez wykładowcę Grzegorza Michalczyka. 

## Atrybuty

### `course_group_id`

Odnośnik do realizowanej grupy kursów.

### `lead_teachere_employee_id`

Odnośnik do pracownika dydaktycznego, który jest głównym opiekunem danej grupy kursów.

### `studies_id`

Odnośnik do oferty edukacyjnej, której częścią jest grupa kursów prowadzona przez tego a nie innego wykładowcę.
