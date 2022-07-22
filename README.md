# Studia - "Przemysłowe Systemy Sterowania" projekty
Projekty z przedmiotu "Przemysłowe Systemy Sterowania" 

## Projekt 1 - "Instalacja środowiska CoDeSys"

- W ramach tego projektu należało zainstalowac i zapoznać się z środowiskiem do programowania sterowników PLC - CoDeSys.

## Projekt 2 - "Program w języku drabinkowym (LAD)"

- W projekcie należy skonfigurować i połączyć ze sobą sterownik PLC i panel HMI do wizualizacji. W tym celu zbuduj system 
oparty o liczniki z dwoma stykami S1 (NO monostabilny) i S2 (NC bistabilny), który w zależności do liczby na liczniku będzie 
włączał różne układy świateł. 

     ![obraz](https://user-images.githubusercontent.com/101189189/180206454-979c4fe5-0398-4344-a3f1-ebebf61c3c56.png)

Projekt został zrealizowany w środowisku CoDeSys V3.15 SP15.

## Projekt 3 - "Projekt układu sekwencyjnego"

- Zaprojektować układ sterowania dwoma siłownikami zapewniający po naciśnięciu przycisku X i wyborze cyklu pracy wykonanie 
odpowiedniego cyklu (cykle są opisane w szczegołach projeku).
- Działanie siłowników można zasymulować korzystając z timerów. Projekt wykonać korzystając z języka FBD lub SFC. Układ sekwencyjny można zaprojektować, korzystając z metody Moore’a. Do kodowania stanów wykorzystać przerzutniki RS.

Projekt został zrealizowany w środowisku CoDeSys V3.15 SP15.

## Projekt 4 - "Układ regulacji poziomu w zbiorniku w oparciu o regulator PID"

- Zaprojektować układ regulacji poziomu w zbiorniku w oparciu o regulator PID.

Najważniejsze założenia projektowe:
1. Projekt w postaci programu PLC i wizualizacji HMI należy zrealizować w
środowisku Automation Studio, natomiast symulacje zbiornika zrealizować
w środowisku Factory IO.
2. Umożliwić obsługę podstawowych funkcji regulatora: wpisywanie nastaw,
wybór struktury, praca NORMAL/REWERS, praca AUTO/MANUAL, śledzenie PV,
3. Dokonać identyfikacji obiektu sterowania, wyznaczyć jego model w postaci
transmitancji (układ inercyjny z opóźnieniem).
4. Dobrać nastawy regulatorów P, PI, PID na podstawie modelu, korzystając
z metod doboru nastaw podanych w skrypcie do wykładu (uzasadnić wybór).
5. Wyznaczyć standardowe wskaźniki jakości regulacji w dziedzinie czasu,
dla różnych regulatorów.
