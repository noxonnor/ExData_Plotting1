## Read the dataset
if (file.exists("./household_power_consumption.txt")) {
  powercons<-read.table("./household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character", "character", rep("numeric",7)),na="?")
  powercons$Time <-strptime(paste(powercons$Date, powercons$Time),"%d/%m/%Y %H:%M:%S")
  powercons$Date <-as.Date(powercons$Date,"%d/%m/%Y")
  dates <- as.Date(c("01/02/2007","02/02/2007"),"%d/%m/%Y")
  powercons <- subset(powercons, Date %in% dates)
}