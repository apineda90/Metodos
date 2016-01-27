library(sqldf)

## dataset: set of metrics from any process.
getMedias <- function(dataset,dataset2){
    file1 <- read.csv(dataset,header=TRUE,sep = ",")
    file2 <- read.csv(dataset2, header=TRUE,sep = ",")
}

## Generate just 1 file with 2 different groups
mergeFiles <- function(dataset,dataset2,outputfile){
    file1 <- read.csv(dataset,header=TRUE,sep = ",")
    file2 <- read.csv(dataset2, header=TRUE,sep = ",")
    ## creating new field.
    file1["group"] <- 1
    file2["group"] <- 2
    total <- rbind(file1, file2) 
    ## DFtranspose <- cbind(t(file1[2, ]), t(file2))
    ## rownames(DFtranspose) <- file1[1, ]
    write.csv(total,file=outputfile,row.names = FALSE)
}
## Given the name of a file
deleterepeated <- function(dataset,outputfile){
    nimbus <- read.csv(dataset,header=TRUE,sep = ",")
    file2 <- nimbus[!duplicated(nimbus), ]
    write.csv(file2,file=outputfile,row.names = FALSE)
}
## prueba
deleterepeated("~/Desktop/supervisor_pacemaker.csv","~/Desktop/supervisor_final_pacemaker.csv")
mergeFiles("~/Desktop/supervisor_final.csv","~/Desktop/supervisor_final_pacemaker.csv","~/Desktop/supervisor_total.csv")
