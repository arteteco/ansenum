# ANSENUM

In questa repo ci sono i file per la produzione delle mappe web per il progetto ANSENUM (Antichi Semi Nuovi Mercati).

Segue una descrizione dei contenuti

## data

### data/CowMilk

Contiene i dati per quanto riguarda le aziende di allevamento bovini e nello specifico i bovini da latte

* `data/Cowmilk` contiene i file coi dati degli allevamenti bovini. Tutti i file sono **copyright** dell'ASL Napoli 3 Sud
* `data/Cowmilk/originalCSV` contiene i file originali forniti dall'ASL Napoli 3 sud
* `data/Cowmilk/originalCSV/Allevamenti bovini da latte_ Monti Lattari.xls` contiene i dati tabulari di tutti gli allevamenti bovini avente tipologia produttiva da latte ricadenti nei comuni siti nel parco dei monti lattari;
* `data/Cowmilk/originalCSV/AllevamentoBovini.csv` è l'esportazione in csv del precedente file con modifiche minori per facilitare il lavoro di pulizia dei dati
* `data/Cowmilk/originalCSV/Elenco aziende_coordinate geografiche.xlsx` contiene i dati tabulari di tutte le aziende bovini ricadenti nei comuni siti nel parco dei monti lattari, incluse le coordinate geografiche
* `data/Cowmilk/originalCSV/ElencoAziendeCoord.csv` è l'esportazione in csv del precedente file con modifiche minori per facilitare il lavoro di pulizia dei dati
* `data/Cowmilk/adaptedCSV/coordComplete.csv` contiene tutti i dati degli allevamenti bovini avente tipologia produttiva da latte, inclusi i dati presi dall'elenco aziende per quanto riguarda la composizione dei bovini (età e sesso), totale capi, data di riferimento, comune e coordinate
* `data/Cowmilk/adaptedCSV/filtered.csv` contiene i dati filtrati per i suddetti allevamenti, contenente solo coordinate geografiche, comune e numero di capi

### data/Grape

Contiene tutti i dati per quanto riguarda invece i vigneti, esclusivamente nel comune di Vico equense, inclusi dati storici. Per maggiori informazioni fare riferimento alla relazione `documents/Bagnoli - Relazione WP1-WP2 Ecotipo Uva di Sabato.pdf`.  I file sono di **proprietà** dell'Agenzia delle Entrate e sono rilasciate con **licenza** CC-BY-SA 3.0 (https://creativecommons.org/licenses/by/3.0/legalcode.it)

* `data/Grape/originalData` Contiene i dati originali forniti dal dott. Daniele Bagnoli.
* `data/Grape/originalData/particelleAttuali/` contiene lo shapefile con le particelle considerate a coltivazione di uva da indagine catastale nel 1981. 
* `data/Grape/originalData/trasfAttuali/` contiene lo shapefile con le particelle che, successivamente a verifiche, si sono rivelate trasformate nella destinazione d'uso e non sono più adibite a coltivazione di uva
* `data/Grape/originalData/vignetiCTR1998/` contiene lo shapefile poligonale con le particelle considerate a coltivazione di uva per la Carta Tecnica Regionale nel 1998
* `data/Grape/originalData/vignetiVicoEquenseCTR1998/` contiene lo shapefile con i dati puntuali della coltivazione di uva per la Carta Tecnica Regionale nel 1998

* `data/Grape/modifiedData/` contiene lo shapefile poligonale utilizzato nella mappa web, risultato dalla sottrazione allo shapefile `particelleAttuali` dello shape `trasfAttuali`

## Scripts

* `scripts/mergeCowData.R` è lo script per unire i dataset sugli allevamenti bovini e filtrarli. 

## Documents

* `documents/Bagnoli - Relazione WP1-WP2 Ecotipo Uva di Sabato.pdf` contiene la relazione tecnica del dott. Daniele Bagnoli per quanto riguarda la mappatura dei vigneti. I dati presenti nell'elaborato ottenuti dal catasto sono  di **proprietà** dell'Agenzia delle Entrate e sono rilasciate con **licenza** CC-BY-SA 3.0 (https://creativecommons.org/licenses/by/3.0/legalcode.it). Il resto della relazione è di **proprietà intellettuale** del dott. Daniele Bagnoli.

## outputs

Questa cartella contiene le mappe esportate utilizzando i suddetti dati.

## Licenze

Dove non diversamente specificato il lavoro è **copyright** di Manuel Moscariello e rilasciato in licenza CC-BY-SA 4.0 International (https://creativecommons.org/licenses/by-sa/4.0/deed.it)



