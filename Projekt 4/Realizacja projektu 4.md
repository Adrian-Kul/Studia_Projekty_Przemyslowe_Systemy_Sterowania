# Projekt 4

### 1. Treść projektu

ZADANIE: Układ regulacji poziomu w zbiorniku w oparciu o regulator PID.

Zaprojektować układ regulacji poziomu w zbiorniku w oparciu o regulator PID.

Najważniejsze założenia projektowe:
- Projekt w postaci programu PLC i wizualizacji HMI należy zrealizować w środowisku
Automation Studio, natomiast symulacje zbiornika zrealizować w środowisku Factory IO.
- Umożliwić obsługę podstawowych funkcji regulatora: wpisywanie nastaw, wybór struktury, 
praca NORMAL/REWERS, praca AUTO/MANUAL, śledzenie PV.
- Dokonać identyfikacji obiektu sterowania, wyznaczyć jego model w postaci transmitancji (układ inercyjny z opóźnieniem).
- Dobrać nastawy regulatorów P, PI, PID na podstawie modelu, korzystając z metod doboru
nastaw podanych w skrypcie do wykładu (uzasadnić wybór).
- Wyznaczyć standardowe wskaźniki jakości regulacji w dziedzinie czasu, dla różnych regulatorów.

### 2. Realizacja projektu

Projekt został zrealizowany w środowisku Automation Studio V4.7, natomiast symulacja została
przeprowadzona w środowisku Factory I/O.

Stworzony projekt realizuje układ regulacji poziomu w zbiorniku za pomocą zaworu na odpływie i regulatora PID. W tym przypadku, 
otwarcie (podanie sygnału sterującego) zaworu będzie powodowało spadek wielkości regulowanej, dlatego regulator musi 
pracować w trybie REWERS w celu prawidłowego działania. Na podstawie zmierzonego poziomu w zbiorniku (PV – Process Variable)
i wartości zadanej (SP – Set Point) jest obliczana wartość wykorzystywana do sterowania zaworem (CV – Control Variable). 
Jest to realizowane za pomocą algorytmu regulatora PID, do którego wykorzystano odpowiednią funkcję w środowisku 
Automation Studio (program w języku ST).

Za pomocą stworzonej wizualizacji HMI jest możliwe:
- rozpoczęcie i zatrzymanie pracy układu
- wpisywanie nastaw: parametry Kp, Ti i Td
- wybór pracy NORMAL/REWERS
- wybór trybu pracy AUTO/MANUAL
- śledzenie PV (jako wykres wartości z ostatnich 5 minut)

Poniżej podgląd strony głównej panelu HMI:
![obraz](https://user-images.githubusercontent.com/101189189/180767650-1efffae2-0add-4946-abf5-9d623ee8c812.png)

W celu symulacji zbiornika wykorzystano Factory IO, gdzie wykorzystano gotowy szablon „Level Control”. Pozwala on 
na sterowanie zaworami na dopływie i odpływie zbiornika, pomiar poziomu w zbiorniku, a także przepływu cieczy na 
odpływie. Wszystkie te sygnały w tym środowisku przyjmują wartości z zakresu 0-10 V (i takie wartości przyjęto w 
programie sterującym, więc nie będzie potrzeby konwersji wartości).

Więcej szczegółów z realizacji projektu znajduje sie w pliku "Sprawozdanie Projekt 4.pdf".





