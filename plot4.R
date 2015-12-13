source("LoadData.R")


png("plot4.png", width=500, height = 500)
par (mfrow=c(2,2))

#plot 1

plot(powercons$Time,
     powercons$Global_active_power,
     ylab="Global Active Power",
     xlab="",
     type="l"
)

#plot 2
plot(powercons$Time,
     powercons$Voltage,
     ylab="Voltage",
     xlab="datetime",
     type="l"
     
)

#plot 3
with(powercons,plot(Time,Sub_metering_1,ylab="Energy sub metering",xlab="", type="l"))

with(powercons,lines(Time, Sub_metering_2, col="red"))

with(powercons,lines(Time, Sub_metering_3, col="blue"))

legend ("topright", col=c("black","red","blue"),
        c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
        lty=1,
        box.lwd=0)

#plot 4
plot(powercons$Time,
     powercons$Global_reactive_power,
     ylab="Global_reactive_power",
     xlab="datetime",
     type="l"
     
)

dev.off()

