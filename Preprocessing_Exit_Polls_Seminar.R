# setwd("D:/UNI/5. Semester/Seminar Exit Poll")

stimmbezirke_cluster_1 <- c(1009, 3020, 5007, 9018, 9019, 13030, 19020, 19019, 25023, 25022)
stimmbezirke_cluster_2 <- c(13018, 13024, 15001, 20015, 21015, 7010)
parteien <-
  c(
    "CSU",
    "SPD",
    "FREIE WAEHLER",
    "GRUENE",
    "FDP",
    "DIE LINKE",
    "BP",
    "OEDP",
    "PIRATEN",
    "AfD",
    "LKR",
    "mut",
    "Die Humanisten",
    "Die PARTEI",
    "Gesundheitsforschung",
    "Tierschutzpartei",
    "V-Partei"
  )


#-----------Einlesen der Datens?tze und Einteilund in cluster----
daten_gesamt <- read.csv("ltw.stimmbezirke.zweitstimmen.csv", sep = ";", fileEncoding = "UTF-8", stringsAsFactors = FALSE)

cluster_1 <- daten_gesamt %>%
  tidyverse::filter(Gebietsnummer %in% stimmbezirke_cluster_1)

cluster_2 <- daten_gesamt %>%
  tidyverse::filter(Gebietsnummer %in% stimmbezirke_cluster_2)

cluster_gesamt <- rbind(cluster_1, cluster_2)

#---------Anzahl Wahlberechtigte, W?hler in clustern
anzahl_waehler_cluster_1 <- cluster_1 %>%
  tidyverse::select(Gebietsnummer, Wahlberechtigte.gesamt, Waehler.gesamt, Ungueltige.Stimmen)

anzahl_waehler_cluster_2 <- cluster_2 %>%
  tidyverse::select(Gebietsnummer, Wahlberechtigte.gesamt, Waehler.gesamt, Ungueltige.Stimmen)

anzahl_waehler_gesamt <- rbind(anzahl_waehler_cluster_1, anzahl_waehler_cluster_2)
