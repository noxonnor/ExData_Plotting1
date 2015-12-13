source("LoadData.R")

png("plot3.png", width=500, height = 500)

with(powercons,plot(Time,Sub_metering_1,ylab="Energy sub metering", type="l"))

with(powercons,lines(Time, Sub_metering_2, col="red"))

with(powercons,lines(Time, Sub_metering_3, col="blue"))

legend ("topright", col=c("black","red","blue"),
        c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
        lty=1)

dev.off()

