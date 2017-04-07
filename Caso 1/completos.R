comlpetos<-function(directorio,id=1:332){
    setwd("~/Mishelle Herrera/GitHub/Programacion_Actuarial_III/specdata")
    mis<-vector("numeric",lenght(id))
    m<-1
        for(i in id){
            k<-read.csv(paste(formatC(i,width = 3,flag = "0"),".csv",sep = ""), header = TRUE)
        tt<-data.frame(r$nitrate)
        nd[m]<-nrow(tt[complete.cases(tt),])
    m<-m+1
        }
data.frame(id,nd)
}