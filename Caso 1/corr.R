corr<-function(directorio,horizonte=0){
    setwd("~/Mishelle Herrera/Programacion_Actuarial_III/specdata")
    run<-vector("numeric",0)
    m<-1
    for(i in 1:332){
        k<-read.csv(paste(formatC(i,width = 3,flag = "0"),".csv",sep = ""),header = TRUE)
        ir<-data.frame(r$sulfate,r$nitrate)
        nl<-nrow(ir[complete.cases(ir),])
    if(nl>horizonte){
        run[k]<-corr(ir[complete.cases(ir),][,1],ir[complete.cases(ir),][,2])
        k<-k+1
    }
    }
    run
}