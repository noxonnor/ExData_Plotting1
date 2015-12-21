source("LoadData.R")

png("plot1.png", width=500, height = 500)

hist(powercons$Global_active_power,
    main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red"
)
dev.off()

