list.files("./data")
fechadescarga<-date()
fechadescarga
datosCamara<-read.table("./data/camaras.csv")
head(datosCamara)
datosCamara<-read.table("./data/camaras.csv",sep=",",header=T)
head(datosCamara)
download.file(url,destfile = "./data/camaras.xlsx",method = "curl")
fechadescarga<-date()

install.packages("rJava")
install.packages("xlsx")
library("rJava");library("xlsx")
datosCamara<-read.xlsx2("./data/camaras.xlsx",sheetIndex=1,header=TRUE)
head(datosCamara)

colIndex<-2:3
rowIndex<-1:4
subConjunto<-read.xlsx("./data/camaras.xlsx", sheetIndex=1,colIndex=colIndex,rowIndex=rowIndex)
subConjunto

install.packages("XML")
library(XML)
url<-"http://www.w3schools.com/xml/simple.xml"
data<-xmlTreeParse(url,useInternationalNodes=TRUE)
nodoRaiz<-xmlRoot(data)
xmlName(nodoRaiz)
names(nodoRaiz)
nodoRaiz[[1]]
xmlSApply(nodoRaiz,xmlValue)

xpathSApply(nodoRaiz,"//name",xmlValue)


install.packages("RMySQL")
ucscDb<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
result<-dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);result

hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
tablas<-dbListTables(hg19)
length(tablas)
dbListFields(hg19,"affyU133Plus2")
dbGetQuery(hg19,"select count(*) from affyU133Plus2")


