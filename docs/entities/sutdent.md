# `student`

Konto sutdenckie użytkownika systemu informatycznego uczelni. Dotyczy studentów dowolnych studiów: I/II stopnia, podyplomówki, doktorantów. 

Taki student może studiować dowolnie wiele specjalizacji z dowolnie wielu kierunków.

## Atrybuty

### `person_id`

Odnisienie do osoby fizycznej, która jest danym studentem. Czyli odnisienie do danych osobych studenta.

Co oczywiste dany student nie może być kilkoma osobami na raz.

### `student_email`

Studencki adres email danej osoby, który służy do korespondencji wewnątrz uczelnianej jako student. Może być to chociażby korespondencja z wykładowcami na temat zajęć.

Służy także jako login do konta studenckiego.

### `password`

Zaszyfrowane hasło do konta studenckiego.

### `expenses_account_id`

Odniesienie do konta bankowego, gdzie student dokonuje różnorakich wpłat. Np. czesne, opłaty z legitymacje, wydanie dyplomu itd.

Teoretycznie mogłoby być to jedno i to samo konto wpłat, ale ta organizacja pozwala na to żeby uczelnia mogła sobie chociażby stworzyć osobane konta wpłat dla każdego wydziału lub cokolwiek innego.

### `incomes_account_id`

Odniesienie do konta bankowego, gdzie student będzie otrzymywać wypłaty od uczelni. Przede wszystkim różnorakie stypednia.

Może być nieuzupełnione do czasu aż student rozpocznie proces ubiegania się o wypłaty z uczelni w postaci stypendium. Wtedy będzie zobowiązany uzupełnić dane swojego konta.
