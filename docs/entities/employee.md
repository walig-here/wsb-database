# `employee`

Konto pracownicze użytkownika systemu informatycznego. Dotyczy zarówno pracowników dydatycznych, administraczyjnyc, technicznych jak i dowolnych innych osób zatrudnianych przez uczelnię na dowolnej pozycji.

Pozwala na jednoznaczą identyfikację pracownika poprzez jego `id`.

## Atrybuty

### `person_id`

Odniesienie do osoby, która jednocześnie jest danym pracownikiem. Czyli odniesienie do prywatnych danych osobowych danego pracownika.

Dany pracownik nie może być powiązany z danymi osobwymi więcej niż jednej osoby!

### `employee_email`

Email pracowniczy danej osoby, który służy do korespondencji służbowej. To jest właśnie ten email, który widzą sudenci chcący skontaktować się z wykładowcą/pracownikiem adminsitracji uczelnianej.

Służy także jako login do konta pracowniczego.

### `passowrd`

Zaszyfrowane hasło do konta pracowniczego.

### `salary_account_id`

Odniesienie do danych konta bankowego, na ktore ma wpływać wypłata danego pracownika.
