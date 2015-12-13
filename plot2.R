source("LoadData.R")

png("plot2.png", width=500, height = 500)

plot(powercons$Time,
     powercons$Global_active_power,
     ylab="Global Active Power (kilowatts)",
     type="l"
)
dev.off()

