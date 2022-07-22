# Projekt 3

### 1. Treść projektu

ZADANIE: Projekt układu sekwencyjnego 

Zaprojektować układ sterowania dwoma siłownikami zapewniający po naciśnięciu przycisku X i wyborze cyklu pracy wykonanie:
##### Cykl 1
- wysuniecie tłoczyska pierwszego siłownika (siłownika A)
- wysuniecie tłoczyska drugiego siłownika (siłownika B)
- wycofanie tłoczyska siłownika B
- wycofanie tłoczyska siłownika A
##### Cykl 2
- wysuniecie tłoczyska siłownika A
- wycofanie tłoczyska siłownika A
- wysuniecie tłoczyska siłownika B
- wycofanie tłoczyska siłownika B

Projekt w postaci programu PLC i wizualizacji HMI należy zrealizować w środowisku CoDeSys. Działanie siłowników można zasymulować 
korzystając z timerów. Projekt wykonać korzystając z języka FBD lub SFC. Układ sekwencyjny można zaprojektować, korzystając 
z metody Moore’a. Do kodowania stanów wykorzystać przerzutniki RS.

### 2. Realizacja projektu

Projekt został zrealizowany w środowisku CoDeSys V3.15 SP15.

Poniżej przedstawiono cyklogramy wymaganych cyklów:

- cykl 1 

    ![obraz](https://user-images.githubusercontent.com/101189189/180430331-c5c965fe-8ae3-4f04-ad40-c0073f79e152.png)
- cykl 2 

    ![obraz](https://user-images.githubusercontent.com/101189189/180430346-968f1582-4bae-43df-9b3b-48e9c11a32a4.png)

Założenia:
- Przycisk X jest przyciskiem monostabilnym, normalnie zamkniętym.
- Wybór cyklu odbywa się przez odpowiednie ustawienie przełącznika dwupołożeniowego.
- Zmiana stanu przycisku X lub przełącznika do wyboru cyklu w trakcie trwania cyklu, nie powoduje żadnych działań.
- Projekt zostanie wykonany przy wykorzystaniu języka SFC.
- Do symulacji działania siłowników wykorzystano timery: wsunięcie siłownika trwa 1 sekundę, wysunięcie również trwa 1 sekundę.
- Do zmiany stanów (zmiennych opisujących siłownik) wykorzystano przerzutniki RS (dzieje się to w trakcie wykonywania akcji przypisanych do odpowiednich kroków programu SFC).
- Na wizualizacji HMI zostaną przedstawione: elementy sterujące (przycisk X, wybór cyklu), sygnalizacja pracy (wykonywanie cyklu), stan siłowników (osiągnięcie pozycji krańcowych, wysuwanie/wsuwanie).
- Wsunięcie i wysunięcie siłowników sygnalizowane jest przez pojawienie się zielonego symbolu nad odpowiednią pozycją krańcową tłoczyska. W trakcie wysuwania lub wsuwania pokazany jest grot strzałki wskazujący kierunek ruchu tłoczyska.    
    
W poniższej tabeli przedstawiono przyporządkowanie wybranych zmiennych do wejść i wyjść sterownika:
  ![obraz](https://user-images.githubusercontent.com/101189189/180431689-f3b2b826-138b-487d-a91e-85745fdec0a5.png)

Poniżej przedstawiono stworzony panel HMI do wizualizacji:
  ![obraz](https://user-images.githubusercontent.com/101189189/180431881-314e7028-7dbe-4af2-b754-b4e859e1f1d8.png)

Poniżej pokazano konfigurację wirtualnego sterownika i panelu HMI potrzebną do wymiany danych między nimi.
- Dane wirtualnego sterownika PLC: ![obraz](https://user-images.githubusercontent.com/101189189/180432165-d04f8067-d096-47b3-8915-f0ead08909c9.png)
- Dane panelu HMI: ![obraz](https://user-images.githubusercontent.com/101189189/180432214-97c5d2f7-b5ff-4010-8e06-37a1def1cf08.png)
- Zmienne programowe sterownika otrzymywane przez panel HMI: ![obraz](https://user-images.githubusercontent.com/101189189/180432244-b7f2f38c-af93-414c-ae1f-764a2f39c097.png)
- Konfiguracja pobierania danych przez panel HMI z wirtualnego sterownika: ![obraz](https://user-images.githubusercontent.com/101189189/180432294-cdb8ea28-566e-4e78-a68e-2468ae81f2de.png)

W celu prawidłowego działania urządzeń wymagane jest poprawne ustawienie adresu sterownika z którego panel ma pobierać zmienne programowe. Aby sprawdzić działanie programu i wizualizacji na panelu HMI należy:
- uruchomić wirtualny sterownik i panel HMI
- połączyć się z nimi przez program CoDeSys
- wgrać program do sterownika i go uruchomić
- wgrać program do panelu HMI i go uruchomić
- w tym momencie powinna pokazać się stworzona wizualizacja, gdzie można sprawdzić działanie programu

Poniżej przedstawiono napisany program w języku SFC na wirtualny sterownik PLC:
![obraz](https://user-images.githubusercontent.com/101189189/180433638-03bbc745-3e1c-49fd-9cf8-e15d13d95923.png)

Poniżej przedstawiono sposób symulacji siłowników:
- siłownik A:     
     ![obraz](https://user-images.githubusercontent.com/101189189/180434426-2806016f-a820-4640-b444-a7a497189bac.png)
- siłownik B:     
     ![obraz](https://user-images.githubusercontent.com/101189189/180434717-0f2e9d75-9053-47c0-acd8-26b6f912c93d.png)


