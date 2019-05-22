# Plot 3


#First we load the data
house <- household_power_consumption <- read.csv("~/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
head(house)
gato <- house

#We subset the data and create a new variable called datetime:

gato <- subset(gato, gato$Date == "1/2/2007" | gato$Date == "2/2/2007")
gato$datetime <- strptime(paste(gato$Date, gato$Time), "%d/%m/%Y %H:%M:%S")


#Before creating the plot, we divide in 2x2:
par(mfrow=c(2,2))

#We create the plots:

#1:

plot (x= gato$datetime, y = gato$Global_active_power,
      ylab = 'Global Active power (kilowatts)',
      xlab ='  ',
      type = "l")

#2
plot (x= gato$datetime, y = gato$Voltage,
      ylab = 'Voltage',
      xlab ='datetime',
      type = "l")

#3
plot (x= gato$datetime, 
      y = gato$Sub_metering_1, 
      ylab = 'Energy sub metering',
      xlab ='  ',
      type = "l")

lines(gato$datetime, gato$Sub_metering_2, col="red")
lines(gato$datetime, gato$Sub_metering_3, col="blue")

legend("topright" , lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#4
plot (x= gato$datetime, y = gato$Global_reactive_power,
      ylab = 'Global_reactive_power,',
      xlab ='datetime',
      type = "l")



#We finally convert it to PNG

png(filename = "plot4.png", width = 480, height = 480, units = "px", plot4)
dev.off()