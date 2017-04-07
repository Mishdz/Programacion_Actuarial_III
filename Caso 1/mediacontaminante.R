mediacontaminante<-function(directorio="~/GitHub/Programacion_Actuarial_III/specdata",contaminante,id=1:332){
        sum<-numeric()
    for(m in id){
        id_1<-formatC(m,(with=3),flag="0")
        vri<-read.csv(paste(id_1,"csv",sep=""),header=TRUE)
    if(contaminante=="sulfate"){
        cnt<-c(cnt,vri$sulfate)
    }   else if (contaminante=="nitrate"){
        cnt<-c(cnt,vri$nitrate)
    }   else {
        paste("Contaminante",contaminante,"inexistente")
    }
    }
media<-mean(cnt,na.rm = TRUE)
media
}
