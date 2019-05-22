
# Plot 1


#First we load the data
getwd()

house <- household_power_consumption <- read.csv("~/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
head(house)

#Then, we subset
as.Date(house$Date)
head(house)
datos <- subset(house,house$Date == "1/2/2007" | house$Date == "2/2/2007")

#pruebita <- c("1/2/2007", "2/2/2007")
#pruebita <- as.Date(pruebita)
#class(pruebita)
#weekdays(pruebita)

#We create Plot 1
plot1 <- hist(datos$Global_active_power, col = "red", main ="Global Active Power", xlab ="Global Active Power (kilowatts)")

#In PNG

png(filename = "plot1.png", width = 480, height = 480, units = "px", plot1)
dev.off()