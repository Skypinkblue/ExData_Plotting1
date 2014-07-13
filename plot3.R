setwd("D:\\R")
library(datasets)
x<-read.csv("household_power_consumption.txt",na.string="?",sep=";")
s<-x[(x["Date"]=="1/2/2007")|(x["Date"]=="2/2/2007"),]
ndata<-data.frame(time=strptime(paste(s$Date,s$Time),"%d/%m/%Y %T"),s[,3:9])
t<-ndata$time
a<-ndata$Sub_metering_1
b<-ndata$Sub_metering_2
c<-ndata$Sub_metering_3
plot(t,a,type="n",ylab="Energy Sub metering",xlab="")
points(t,a,type="l")
points(t,b,type="l")
points(t,b,type="l",col="red")
points(t,c,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1" ,"Sub_metering_2","Sub_metering_3"),pch="-",col=c("black","red","blue"))
dev.copy(png,width=480,height=480,file="plot3.png")
dev.off()
