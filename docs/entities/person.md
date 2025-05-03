# person

Dowolna osoba powiązana z uczelnią jako użytkownik jej systemu informatycznego.

W ramach sytyemu identyfikuje się ją poprzez `id`, ale równie dobrze można ją znaleźć poprzez unikalną krotkę złożoną z:

- imienia
- durgiego imienia
- nazwiska
- numeru dokumentu tożsamości
- kraju pochodzenia
- daty urodzenia

Pozwala na uniknięcie redundancji danych osobowych użytkownika, który może posiadać w systemie konto zarówno studenckie jak i pracownicze.

## Atrybuty

### `PESEL`

PESEL osoby. Tylko dla obywateli polskich oraz cudzoziemców, którzy uzyskali tymczasowy numer PESEL.

### `identity_document_number`

Alfanumeryczny numer dokumentu tożsamości. Tym dokumentem tożsamości może być: paszport, dowód osobisty itd. Wymagane od każdej osoby fizycznej, gdyż zarówno obywatele polscy jak i cudzoziemcy mają obowiązek posiadania jakiegoś dokumentu tożsamości:

- Dowód osobity dla obywateli UE.
- Paszport dla cudzoziemców.

### `name`

Pierwsze imię.

### `second_name`

Drugie imię. Nie każdy posiada więc nieobowiązkowe.s

### `surname`

Nazwisko.

### `birth_date`

Data urodzenia osoby.

### `gener_id`

Odnośnik do płci przypisanej osobie.

### `country_of_origin_id`

Odnośnik do kraju pochodzenia osoby. Bowiem z uczelnią mogą być powiązani zarówno obywatele polscy jak i cudzoziemcy. W połączeniu z `identity_document_number` pozwala nam określić jakim dokumentem tożsamości dane osoba się legitymuje, gdyż każdy kraj umawia się z Polską co do jednego typu typu takiego dokuemntu.

Teoretycznie osoba może być obywatelem wielu krajów, ale raczej rozsądnym jest tutaj ograniczenie do jednego, aby zredukować skomplikowanie systemu i ukonkretnić procedury administracyjne.

### `personal_email`

Osobisty adres email. Wykorzystywany gdy do komunikacji, z daną osobą, która nie tyczy się tematów pracowniczych czy studenckich. Ewentualnie do koredpondencji elektronicznej, kiedy inne jej formy nie są możliwe--np. osoba stale nie reaguje na próby kontaktu przez pocztę pracowniczą.

### `photo_url`

URL do zdjęcia profilowego hostowanego na serwerze z plikami statycznymi. System nie wymaga, aby użytkownik takie wgrywał, ale daje taką możliwość.

### `address`

Odniesienie do danych adresu koredpondencyjnego danej osoby. Pozwalamy na wprowadzenie tylko jednego takie adresu, aby adminsitracja uczelni nie musiała zgadywać pod jaki adres wysyłać korespodencję.
