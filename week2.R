## Part1
pollutantmean <- function(directory, pollutant, id=1:332) {
  ## directory is character vector of length 1 indicating
  ## the location of the CSV files
  
  ## pollutant is a character vector of length 1 indicating
  ## tha name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate"
  
  # id is an integer vector indicating the monitos ID number
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  # in the id vector (ignoring NA values)
  # NOTE: do not round the result!
  
  dataframes_vector = c()
  for (file_id in id) {
    f_name <- paste(formatC(file_id,digits = 2, flag=0),".csv",sep="")
    f_name <- file.path(directory, f_name)
    print(paste("opening: ",f_name))
    dataframes_vector <- rbind(dataframes_vector, read.csv(f_name))
  }
  
  df <- rbind(dataframes_vector)
  mean(df$pollutant, na.rm=TRUE)
}

## Part 2
complete <- function(directory, id=1:332) {
  ## directory is a character vector of length 1
  ## the location of the CSV files
  
  ## id is an integer vector indicating the monitor ID number
  ## to be used
  
  ## return a data frame of the form
  ## id nobs
  ## 1 117
  ## 2 1041
  ## ...
  ## where id is the monitor id and nobs is the
  ## number of complete cases
  dataframes_vector = c()
  for (file_id in id) {
    f_name <- paste(formatC(file_id,digits = 2, flag=0),".csv",sep="")
    f_name <- file.path(directory, f_name)
    print(paste("opening: ",f_name))
    dataframes_vector <- rbind(dataframes_vector, read.csv(f_name))
  }
  
  df <- rbind(dataframes_vector)
  return(df)
}

## Part3
bah <- function(directory, id=1:332) {
  
  
  return (0)
}