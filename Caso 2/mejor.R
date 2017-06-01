
mejor <- function(estado,resultado){
    setwd("~/GitHub/Programacion_Actuarial_III/HospitalData")
    
    data <- read.csv("outcome-of-care-measures.csv")
    C <- FALSE
    
    
    if(resultado== "ataque"){
        col <- 11
    }
    else if (resultado== "falla"){
        col <- 17
    }
    else {
        col <- 23
    }
    
    
    m <- matrix(data[,col],4706,1)
    data[,col] <- suppressWarnings(as.numeric(m))
    data[,2] <- as.character(data[,2])
    
    
    mm <- data[grep(estado,data$State),]
    Orden <- mm[order(mm[,col], mm[,2], na.last=NA),]
    
    
    if (!((resultado == "ataque")|(resultado == "falla")| (resultado == "neumonia"))){
        stop("resultado inválido")
        
    }
    
    my <- matrix(data[,7], 4706,1)
    
    for (i in 1:length(my))
        if(estado == my[i]){
            C <- TRUE
        }
    if(!C){
        stop("Estado inválido")
    }
    
    Orden[1,2]
}