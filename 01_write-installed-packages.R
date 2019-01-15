#' ---
#' output: github_document
#' ---

library(tidyverse)
library(dplyr)
## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
packages <- as.data.frame(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

packages <- packages %>%
  select(Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()