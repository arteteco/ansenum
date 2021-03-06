# SETUP
library(tidyverse)


# Choose the working path
setwd("~/ansenum/data/CowMilk/originalCSV/")

# Which is the CSV with the coordinates?
azCoord <- read.csv("ElencoAziendeCoord.csv")

# CSV to be merged?
boviniLatte <- read.csv("AllevamentoBovini.csv")

# filter so that we only keep the rows with the coordinate of the entries that produce milk

filteredCoord <- filter(azCoord, CodiceAzienda %in% boviniLatte$CodiceAzienda)

# Merge, indicate in by= the column to use as reference for the merge

coord <- merge(boviniLatte, filteredCoord, by="CodiceAzienda") %>%
  drop_na()


# Name of the output file?
write.csv(coord, "../adaptedCSV/coordComplete.csv", row.names = F)

# Filter only to the column we are interested in

toKeep <- c("TOT_CAPI", "LATITUDINE", "LONGITUDINE", "COMUNE")

filtered <- dplyr::select(coord, all_of(toKeep))

# write the filtered, final output

write.csv(filtered, "../adaptedCSV/filtered.csv", row.names = F)
