library(datasets)
x<-read.csv("household_power_consumption.txt",na.string="?",sep=";")
s<-x[(x["Date"]=="1/2/2007")|(x["Date"]=="2/2/2007"),]
hist(as.numeric(s$Global_active_power),xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power")
dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()
