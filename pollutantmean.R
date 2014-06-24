
  pollutantmean <- function(directory, pollutant, id= 1:332) {
      name<-list.files(directory)[id]
      data.name<-lapply(paste0("specdata/",name),read.csv,header=T)
      total<-do.call(rbind, data.name)
      a<-mean(na.omit(total[[pollutant]]))
      print(round(a,digits=3))
  } 
  
  pollutantmean("specdata","nitrate", 23)
  

## 'directory' is a character vector of length 1 indicating
## the location of the CSV files
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)


