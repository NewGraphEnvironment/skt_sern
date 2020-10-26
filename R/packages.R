if (!require("pacman")) install.packages("pacman")

pacman::p_load(
  'ckanr',
  'tidyverse',
  data.table ##for the %like% function
)
