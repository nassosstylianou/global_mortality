#This line of code installs the packman page if you do not have it installed - if you do, it loads the package
if(!require(pacman))install.packages("pacman")

#Loads the necessary packages used in this project - if you do not have them installed, the p_load function from the pacman package will install them for you before loading them
p_load("readr", "readxl",
       "tidyverse", "stringr",
       "magrittr", "tidytext", 
       "R.utils", "broom")
