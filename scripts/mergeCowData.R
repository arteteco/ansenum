# SETUP
library(tidyverse)


# Choose the working path
setwd("~/ansenum/data/CowMilk/originalCSV/")

# Which is the CSV with the coordinates?
azCoord <- read.csv("ElencoAziendeCoord.csv")

# CSV to be merged?
bovini <- read.csv("AllevamentoBovini.csv")

# Merge, indicate in by= the column to use as reference for the merge

coord <- merge(bovini, azCoord, by="CodiceAzienda") %>%
  drop_na()

coord
# Name of the output file?
write.csv(coord, "../adaptedCSV/coord.csv", row.names = F)
