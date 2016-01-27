library(sqldf)

## dataset: set of metrics from any process.
function.getMedias <- function(dataset,dataset2){
    file1 <- read.csv(dataset,header=TRUE,sep = ",")
    file2 <- read.csv(dataset2, header=TRUE,sep = ",")

}

## Given the name of a file
deleterepeated <- function(dataset,outputfile){
    nimbus <- read.csv(dataset,header=TRUE,sep = ",")
    file2 <- nimbus[!duplicated(nimbus), ]
    write.csv(file2,file=outputfile,row.names = FALSE)
}
## prueba
deleterepeated("~/Desktop/supervisor.csv","~/Desktop/supervisor_final.csv")

