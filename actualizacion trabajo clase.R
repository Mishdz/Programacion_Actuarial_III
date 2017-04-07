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

str(file)
con <- url("http://www.fcfm.buap.mx/")
x<-readLines(con,7)
x

x<-c("a","b","c","c","d","e","a")
x
x[1]
x[4]
x[1:3]
x[3:5]
x[5:2]
x[1,3]       #No
x[1][3]      #No
x[c(1,3,5)]  #Si
x[x>"b"]

u<-x=="c"
u
x[u]

u<-x=="c"|x=="d"   #|o,&y
u
x[u]

x<-list(foo=1:4,bar=0.6)
a<-x[1]
b<-x[[1]]
c<-x$foo    #[[]]=$

x["bar"]
x[["bar"]]
u<-"bar"
x[u]
x[[u]]
x$u
x$bar
x[["u"]]


count<-0
while(count<10){
  print(count)
  count<-count+1
}

for(i in 0:9){
  print(i)
}

i<-0
while(TRUE && i<=100){
  print(i)
  i<-i+1
}

z<-5
contador<-1
vector<-c()
while ((z>=3 && z<=10) && contador<100){
  vector<-c(vector,z)
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+1
  } else{
    z<-z-1
  }
  contador<-contador+1
}
vector


z<-5
m<-c(z)
while (z>=4 && z<=9){
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+1
  } else{
    z<-z-1
  }
  m<-c(m,z)
}
print(m)

z<-5
m<-c(z)
while (z>=4 && z<=9){
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+1
  } else{
    z<-z-1
  }
  m<-c(m,z)
}
print(m)


#Comentario
    #
12345678901234567890123456789012345678901234567890123456789012345678901234567890

for(i in 1:100){
    for (j in 1:100){
        if (TRUE){
            n<-50
            while (T || n<100){
                print(n*i*j)
            }
        }
    }
}

#dates and times
x<-as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

x<-as.Date("1994-08-25")
unclass(x)
y<-as.Date("2017-03-21")
unclass(y)
unclass(y-x)

date()
ct <- as.POSIXct.date(Sys.time())
lt <- as.POSIXlt.date(Sys.time())

lapply

x<-list(a=1:5,b=rnorm(10000))
lapply(x,mean)

x<-1:4
lapply(x,runif,max=15,min=5)

x<-1:4
lapply(x,runif)

x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
sapply(x,mean)
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)

x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

x<-matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims=2)

