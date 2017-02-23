y<-data.frame(a=1,b="a")
dput(y)
?dput
dput(y,"y.R")
dget("y.R")
y<-dget("y.R")
rm(y)
y<-dget("y.R")
y

x<-"Programacion Actuarial III"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
x
y
source("data.R")

x<-"Programacion Actuarial III"
y<-data.frame(a=1:10,b="a")
dump(c("x","y"),file="data.R")
x
y
source("data.R")

