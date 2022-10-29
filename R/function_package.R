#'@title Change_Degree
#'
#'@description converts degree format from decimals degrees minutes to decimal degrees
#'@param longitude the column in a dataframe of longitude values
#'@param latitude the column in a dataframe of latitude values
#'@param df the original dataframe that will be manipulated
#'
#'@import parzer
#'
#'@keywords decimal degrees latitude longitude
#'
#'@returns edited dataframe with longitude and latitude values changed
#'
#'@export

#pass the long and lat columns and also the whole data frame
change_Degree <- function(longitude, latitude, df) {
  longitude <- parzer::parse_lon(longitude)
  latitude <- parzer::parse_lat(latitude)
  #repopulate df and return df
  df$Longitude <- longitude
  df$Latitude <- latitude
  return (df)
}

  