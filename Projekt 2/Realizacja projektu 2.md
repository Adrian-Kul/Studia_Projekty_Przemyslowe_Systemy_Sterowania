# Projekt 2

### 1. Treść projektu

- W projekcie należy skonfigurować i połączyć ze sobą sterownik PLC i panel HMI do wizualizacji. 
- Program w języku drabinkowym (LAD):   zbuduj system oparty o liczniki z dwoma stykami S1 (NO monostabilny) i S2 (NC bistabilny), który w zależności do liczby na liczniku będzie 
włączał różne układy świateł. 

    ![obraz](https://user-images.githubusercontent.com/101189189/180206454-979c4fe5-0398-4344-a3f1-ebebf61c3c56.png)

### 2. Realizacja projektu

Projekt został zrealizowany w środowisku CoDeSys V3.15 SP15.
- Przyjęto następujące oznaczenia świateł:

    ![obraz](https://user-images.githubusercontent.com/101189189/180405104-92b1b23d-ad9a-4d1a-b397-e3db2ff4411c.png)

Przyjęto następujące założenia odnośnie działania systemu:
- Przycisk S1 powoduje zmianę aktualnej liczby na liczniku.
- Przycisk S2 powoduje zmianę trybu zliczania (zliczanie w dół lub w górę).
- Przy przytrzymaniu przycisku S1, wciśnięcie przycisku S2 może powodować zmianę liczby licznika.
- Jeśli aktualną liczbą jest 9, i nastąpi wciśnięcie przycisku S1 w trybie liczenia do góry, to nastąpi reset
licznika do wartości 0.
- Jeśli aktualną liczbą jest 0, i nastąpi wciśnięcie przycisku S1 w trybie liczenia w dół, to w liczniku
pozostanie liczba 0.

Opis działania programu:
- W zależności od stanu zmiennych D1, D2, D3 i D4 ustawiane są odpowiednie wyjścia sterownika.
- Wykorzystano dwa liczniki (jeden zlicza w górę, drugi w dół).
- Odejmując stany tych liczników uzyskuje się wynikowy „stan licznika” (chodzi o liczbę, w zależności od której załącza się światła).
- Jeśli liczba jest mniejsza niż 0, lub większa od 9, to następuje reset liczników.
- W zależności od wynikowej liczby (gdy jest równa konkretnej wartości) następuje ustawienie zmiennych D1-D4 do odpowiednich wartości.

Wirtualny sterownik PLC skonfigurowano tak, żeby wysyłał na zewnątrz informacje o zmiennych programowych (w celu odbioru przez panel HMI)

Poniżej przedstawiono stworzony panel HMI do wizualizacji:
![obraz](https://user-images.githubusercontent.com/101189189/180406154-a18d0e7e-d632-4f58-8146-6bc3578f4821.png)

Poniżej przestawiono konfigurację źródła odbieranych danych przez panel HMI, w celu przetwarzania danych do wizualizacji.
- Konfiguracja źródła odbieranych danych przez panel HMI: ![obraz](https://user-images.githubusercontent.com/101189189/180406404-5ae4990f-f0c7-4a34-9b94-2e857ac80988.png)
- Podgląd danych pobieranych przez panel HMI z wirtualnego sterownika: ![obraz](https://user-images.githubusercontent.com/101189189/180406456-0965b254-b533-4998-aa36-4b83c0452eef.png)

Poniżej przedstawiono napisany program w języku LAD na wirtualny sterownik PLC:
![obraz](https://user-images.githubusercontent.com/101189189/180411093-81f8fee7-5a30-4c87-8d0e-717666bafa3a.png)
![obraz](https://user-images.githubusercontent.com/101189189/180412179-a9d95799-4cf6-419f-8df1-6b9ee4200f65.png)




