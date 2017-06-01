
rankingcompleto<- function(resultado, num = "mejor"){
    setwd("~/GitHub/Programacion_Actuarial_III/HospitalData")
    
    data<- read.csv("outcome-of-care-measures.csv")
    
    if(resultado == "ataque"){
        col<- 11
    } else if(resultado == "falla"){
        col<- 17
    }else {
        col<- 23
    }
    
    im<- matrix(data[,col], 4706,1)
    data[,col]<- suppressWarnings(as.numeric(im))
    data[,2]<- as.character(data[,2])
    
    e<- levels(data[,7])
    
    for (i in 1:length(e)){
        b<- data[grep(e[i], data$State),]
        orden<- b[order(b[,col], b[,2], na.last = NA),]
        
        if(num == "mejor"){
            h <- orden[1,2]
        }else if(num == "peor"){
            h <- orden[nrow(orden),2]
        }else{
            h<- orden[num,2]
        }
        r<- append(r, c(e[i],h))
    }
    
    r<- data.frame(matrix(r, length(e), 2, byrow = TRUE))
    
    if(!((resultado == "ataque") | (resultado == "falla") 
         | (resultado == "neumonia"))){
        stop("resultado invalido")
        
    }
    colnames(r)<- c("estado", "hospital")
    r
}