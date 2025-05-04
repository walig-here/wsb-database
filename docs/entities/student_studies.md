# `student_studies`

Studia na danym kierunku realizowane przez jednego ze studentów obecne bądź w przeszłości. W uproszczeniu jest to po prostu pojemnik na proces kształcenia studenta na danym kierunku--np. studia inżynierskie, zaoczne z informatyki dla Jana Kowalskiego.

Dany student może realizować/zrealizować dowolnie wiele studiów.

## Atrybuty

### `student_index_number`

Odnośnik do student realiziującego studia.

### `studies_id`

Odnośnik do typu studiów realizowanych przez studenta.

### `thesis_id`

Odnośnik do danych pracy dyplomowej napisanej przez studenta w ramach zakończenia danych studiów. Jest to NULL, gdy praca nie jest jeszcze napisana, bo student wciąż jest na zbyt niskim semestrze. Ewnetualnie jest `NULL`, gdy student ukończył studia, ale uzyskał wyłącznie absolutorium.

### `current_semester`

Numer semestru, na którym znajduje się aktualnie student w ramach rozważanych studiów. Nie może być niedodatni. Musi być mniejszy niż maksymalna liczba semestrów dostępnych w ramach realizowanych studiów.

NULL gdy student już zakończył studia.

### `start_date`

Data rozpoczęcia studiów.

### `end_date`

Data zakończenia studiów. Jest `NULL`, gdy studia są w trakcie.