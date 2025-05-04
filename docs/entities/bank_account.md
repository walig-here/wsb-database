# `bank_account`

Dane konta bankowego używanego do transferów pieniężnych wykonywanych przez uczelnię.

Wydzelnie do osobnej tabeli pozwala na redukcję redundancji danych gdy przykładowo dana osoba jest zarówno pracownikiem jak i studentem i zarówno stypendium jak i wypłatę chce otrzymywać na jedno i to samo konto.

Redundancja jest też mniejsza, gdy uczelnia przydziela wielu studentom ten sam numer konta do wykonywania wpłat.

## `number`

Number konta bankowego. Unikalny, aby nie było redundancji i ta tabela miała sens.
