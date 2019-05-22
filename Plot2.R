# Plot 2


#First we load the data
house <- household_power_consumption <- read.csv("~/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
head(house)
gato <- house

#We subset the data and create a new variable called datetime:

gato <- subset(gato, gato$Date == "1/2/2007" | gato$Date == "2/2/2007")
gato$datetime <- strptime(paste(gato$Date, gato$Time), "%d/%m/%Y %H:%M:%S")

#We create the plot:

plot (x= gato$datetime, y = gato$Global_active_power,
      ylab = 'Global Active power (kilowatts)',
      xlab ='  ',
      type = "l")

#In PNG

png(filename = "plot2.png", width = 480, height = 480, units = "px", plot2)
dev.off()