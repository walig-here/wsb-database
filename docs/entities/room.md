# `room`

Pomieszczenie znajdujące się wewnątrz dowolnego budynku należącego do uczelni.

## Atrybuty

### `name`

Alfanumeryczna nazwa pomieszczenia, która jednoznacznie identyfikuje go w ramach budynku, w którym pokój się znajduje.

Unikalny w wraz z odnośnikiem do numeru budynku.

### `floor_number`

Numer piętra, na którym znajduje się pomieszczenie. Liczymy od 0, gdzie 0 to parter. Ujemne wartości nie są akceptowane.

### `building_id`

Odnośnik do budynku, gdzie znajduje się pomieszczenie.

### `didactical`

Wartość logiczna definiująca, czy dane pomieszczenie jest pomieszczeniem dydatktycznym--czyli czy można w nim prowadzić zajęcia.

Przydatne do odfiltorwania tylko tych pomieszczeń, które mogą być użyte do stworzenia planu zajęć.
