# `employee_position`

Pozycja przydzielona pracownikowi, którą piastuje lub piastował w jakimś przedziale czasu i otrzymuje za to określone wynagrodzenie.

Ta tabela pozwala, aby pracownika piastował kilka pozyacji w danym momencie: np. był jednocześnie rektorem i prfesorem uczelni, lub jednocześnie zleceniobiorcą na pół etatu w instytucie A i instytucie B.

Pozwala ona takzę przechować przeszłe stanowiska piastowane przez pracownika. To czy stanowisko jest byłe można rozpoznać to, że data z niej ustąpienia leży w przeszłości.

Dodatkowo ta tabela pozwala na przydzielenie danej pozycji kilku pracownikom. No bo przecież możemy mieć wielu różnych adiunktów w danym czasie lub na przestrzeni czasu.

## Atrybuty

### `position_id`

Odnośnik do typu pozycji zajmowanego przez pracownika.

### `employee_id`

Odnośnik do pracownika piatsującego pozycję.

### `salary`

Wynagrodzenie pracownika za piastowanie rozważanej pozycji. Wyrażane w PLN z precyzją do 2 miejsc po przecinku.

Musi być mniejsze od 0 i powinno zawierać się w widełkach płacowych dla danej pozycji.

### `begin_date`

Dzień rozpoczęcia piastowania danego stanowiska.

### `end_date`

Dzień zakończenia pracy na danym stanowisku. Co oczywiste powinna być ona chronologicznie późniejsza niż `begin_date`.

Ta data możę być datą przyszłą. Wówczas można to interpretować jako ustaloną umową datą ustania stosunku pracy na danym stanowisku.

Ta data może być też datą przeszłą. Wówczas cała krotka jest interpretowana jako przeszłe stanowisko danego pracownika, który obecnie już nie pracuje na uczelni lub po prostu zmienil stanowisko.

Jeżeli jest `NULL`, to oznaczam, że pracownik piastuje tą pozycję w oparciu o umowę na czas nieokreślony.

### `faulty_id`

Odniesienie do wydziału, na którym na danym stanowisku zatrudniony jest dany pracownik.

Jeżeli pracownik podlega pod uczelnię per se--np. ogólnouczelniana administracja informatyczna lub rektor--to wpisywany jest NULL.
