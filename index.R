suppressMessages(source("R/dependencies.R"))
source("R/ingest.R")
source("R/processing.R")

args <- commandArgs(trailingOnly=TRUE)

standings <- get_standings_data(args[1])
standings <- split_name(standings)

result <- generate_sentence(standings)

# standings <- get_standings_data('https://fantasy.premierleague.com/drf/leagues-classic-standings/501748?phase=1&le-page=1&ls-page=1')

cat(result)
