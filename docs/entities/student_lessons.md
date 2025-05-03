# `student_lessons`

Informacje na temat uczestnictwa studenta w zajęciach z określonej grupy zajęciowej.

Przykładowo informacje o uczestnictwie studenta Jana Kowalskiego z kierunku Informatyka w zajęciach 1. z wykładu z kursu Programowanie Obiektowe dla grupy K1.

## Atrybuty

### `student_was_present`

Wartość logiczna określająca czy student był obecny na zajęciach.

Może być NULL gdy prowadzący nie sprawdził obecności, zajęcia jeszcze się nie odbyły lub zostały odwołane.

### `lesson_id`

Odnośnik do zajęć, w których uczestnicznyć ma student.

### `student_lesson_group_id`

Odnośnik do danych na temat uczestnictwa studenta w grupie zajęciowej.

Musi być to ta sama grupa zajęciowa, do której należą same zajęcia, w których student uczestniczy.
