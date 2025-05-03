# address

Adres korespodencyjny zapisany w systemie. Jednoznacznie identyfikuje jakąś lokację--budynek należący do uczelni czy adres zamieszkania.

Może być przypisany do budynku lub kraju. Usuwany z systemu gdy nie jest przypisany do żadnego z tych elementów.

Wszystkie atrybuty w danej krotce powinny być unikalne. Pozwala zredukować redundancję w sytuacjach, gdy np. kilka osób zarejestrowanych w systemie mieszka pod tym samym adresem.

## Atrybuty

### `street_name`

Nazwa ulicy. Niewymagana, bo nie w każdej miejscowości znajduje się ulica--czasem są tylko numery budynków.

### `building_number`

Alfanumeryczny numer budynku. Używany zamiennie z numerem klatki.

### `flat_number`

Numer lokalu czy też mieszkania. Nieobowiązkowy, bo niektóre budynki składają się z tylko jednego lokalu i nie ma numeri lokalu.

### `post_code`

Kod pocztowy. Nieobowiązkowy, bo chociaż większość krajów posiada kody pocztowe, to jednak nie wszystkie.

### `locality`

Nazwa miejscowości.

### `administrative_unit`

Ogólnie pojęta nazwa jednostki samorządu terytorialnego, w której znajduje się miejscowość z adresu. Przykładowo nazwa województwa w przypadku Polski, nazwa stanu w przypadku USA czy land w przypadku Niemiec.

Przydatne, gdy w danym kraju mamy kilka miejscowości o wspólnej nazwie, ale położonych w różnych regionach.

Niewymagane, bo nie każdy kraj jest na tyle rozległy, aby mieć znaczący podział administracyjny.

### `country_id`

Odnośnik do kraju, w którym znajdujes się adres.
