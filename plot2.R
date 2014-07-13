setwd("D:\\R")
library(datasets)
x<-read.csv("household_power_consumption.txt",na.string="?",sep=";")
s<-x[(x["Date"]=="1/2/2007")|(x["Date"]=="2/2/2007"),]
ndata<-data.frame(time=strptime(paste(s$Date,s$Time),"%d/%m/%Y %T"),s[,3:9])
plot(ndata$time,ndata$Global_active_power,type="l",main="Global Active Power",ylab="Global Active Power(kilowatts)")
dev.copy(png,width=480,height=480,file="plot2.png")
dev.off()
