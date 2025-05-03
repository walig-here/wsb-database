# `phone_number`

Numer telefonu pracownika uczelni. Przede wszystkim są to numery służbowe, które służą do kontaktu pracownikiem. Takich może być wiele, bo i komórkowy i jakiś stacjonarny w biurze. Ewentualnie kilka numerów, gdzie każdy powiązany jest z inną funckją pełnioną przez daną osobę. 

Jednakże każdy pracownik pozostawia też swój numer osobisty do kontaktu awaryjnego--np. gdy zwierzchnikowi stale nie udaje się z nim skontaktować przy pomocy numeru służbowego. Takich numerów prywatnych również można wprowadzić dla danego pracownika wiele.

Przy zakładaniu konta pracownika w należy wprowadzić co najmniej numer prywatny. Numer służbowy powinien zostać przypisany pracownikowi z określonym przez uczelnię czasie (np. po fizycznym przekazaniu mu telefonu służbowego). Ewentualnie uczelnia może uznać, że nie chce dawać pracownikowi służbowego numeru i posługuje się wyłącznie mailem.

Dwóch pracowników nie może posługiwać się tym samym numerem telefonu. To zmniejszyłoby jednoznaczność prób kontaktu z danym pracownikiem. Zadzownilibyśmy na dany numer i nie mam pewności, czy odbierze pracownik A, B czy C.

*TO THINKING: Tutaj założyłem, że zawsze istnieje jakaś jedna osoba odpowiedzialna za odebrane danego numeru telefonu. Jednak nasze instytucje nie zawsze tak działają. Do danego telefonu stacjonarnego w różnym czasie przydzielone są różne osoby. Przykładowo kilka osób pracuje na portierni w systemie zmianowym i odpowiada za obsługę telefonu tylko na swojej zmianie.*

*TO THINKING: Czy nie przenieść numeru prywatnego do tabeli `employee` skoro i tak jest on de facto powiązany z danym pracownikiem jako osobą fizyczną? Minusem wtedy jest jednak to, że pracownik może podać wyłącznie jeden numer prywatny bez zaburzania normalizacji.*

## Atrybuty

### `number`

Właściwy numer telefonu wraz z numerem kierunkowym i odpowiednim formatowaniem, które wskazywałoby na to czy ten numer jest komórkowy czy stacjonarny.

### `is_personal`

Wartość logiczna, która wskazuje, czy dany numer jest praywatny czy służbowy.

### `employee_id`

ID pracownika, do którego dany numer jest przypisany. Wygodne zwłaszcza w przypadku numerów służbowych, które mogą na przestrzeni czasu wielokrotnie zmieniać właścicieli ze względu na rotacje zatrudnienia.
