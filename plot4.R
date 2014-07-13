setwd("D:\\R")
library(datasets)
x<-read.csv("household_power_consumption.txt",na.string="?",sep=";")
s<-x[(x["Date"]=="1/2/2007")|(x["Date"]=="2/2/2007"),]
ndata<-data.frame(time=strptime(paste(s$Date,s$Time),"%d/%m/%Y %T"),s[,3:9])
t<-ndata$time
a<-ndata$Sub_metering_1
b<-ndata$Sub_metering_2
c<-ndata$Sub_metering_3
par(mforw=c(2,2),mar=c(4,4,2,2))
plot(ndata$time,ndata$Global_active_power,type="l",ylab="Global Active Power")
plot(ndata$time,ndata$Voltage,type="l",ylab="Voltage",xlab="datetime")
plot(t,a,type="n",ylab="Energy Sub metering",xlab="")
points(t,a,type="l")
points(t,b,type="l")
points(t,b,type="l",col="red")
points(t,c,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1" ,"Sub_metering_2","Sub_metering_3"),pch="-",col=c("black","red","blue"))
plot(ndata$time,ndata$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()
