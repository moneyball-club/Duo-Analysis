#####################
# INSTALLING NBASTATR

#this package needs to be installed for nbastatR to be installed (or any github package)
install.packages("devtools")
library(devtools)

#you might need to update packages before installing this.
#if you're on pc then you might also need Rtools. Please refer to http://jtleek.com/modules/01_DataScientistToolbox/02_10_rtools/#1
devtools::install_github("abresler/nbastatR")
#refer to https://www.rdocumentation.org/packages/nbastatR/versions/0.1.12039 for all the functions that come with this package
#almost anything you can think of.

#######################
#START HERE IF YOU ALREADY HAVE NBASTATR INSTALLED
library(nbastatR)

as.data.frame(bref_players_stats(seasons = 1990:2019, tables = c("advanced", "totals", "per_minute", "per_game"),
                   include_all_nba = F, only_totals = TRUE, nest_data = FALSE,
                   assign_to_environment = TRUE, widen_data = TRUE, join_data = TRUE,
                   return_message = TRUE))