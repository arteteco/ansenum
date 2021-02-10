# This script is to filter just the data we need for the mapping

library(tidyverse)


# Choose the working path
setwd("~/ansenum/data/CowMilk/adaptedCSV/")

# what csv should we filter?

raw <- read.csv("coord.csv")

# what rows should we keep?

toKeep <- c("TOT_CAPI", "LATITUDINE", "LONGITUDINE", "COMUNE")

# Filter the data

filtered <- dplyr::select(raw, all_of(toKeep))

# Write the output csv

write.csv(filtered, "filtered.csv", row.names = F)
