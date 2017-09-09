generate_word_for_rank <- function(){
  rank <- c(1,2,3,4)
  word <- c('first', 'second', 'third', 'fourth')
  
  rank_words <- data.frame(rank = rank, word = word)
  
  return(rank_words)
}

split_name <- function(standings){
  standings %>% separate(col = name, 
           into = c('firstname', 'lastname'),
           sep = " ")
}

generate_sentence <- function(standings){
  rank_words <- generate_word_for_rank()
  for(i in 1:nrow(standings)){
    phrase <- paste0(standings$firstname[i], ' is ', rank_words$word[standings$ranking[i]], ' with ', standings$total_points[i], '. He moved ', standings$movement[i], ' after scoring ', standings$event_points[i], ' points this week.\n')
    cat(phrase)
  }
}



# Jay is first with 130 points in total. This week he moved up after picking up 45 points.
# Ryan is second with 121 points in total. This week he moved down after picking up 12 points.