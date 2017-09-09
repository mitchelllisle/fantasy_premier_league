get_standings_data <- function(url){
  data <- GET(url)
  data <- fromJSON(content(data, type = 'text', encoding = 'UTF8'), flatten = TRUE)
  
  data <- data.frame(data$standings)
  
  data <- data_frame(username = data$results.entry_name, 
                     name = data$results.player_name,
                     event_points = data$results.event_total,
                     movement = data$results.movement,
                     ranking = data$results.rank,
                     total_points = data$results.total)
  
  return(data)
}