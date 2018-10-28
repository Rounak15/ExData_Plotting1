# Reading the data:
data <- read.csv("PowerConsumption.csv")

#creating graphics device
png(filename = "Plot2.png", width = 480, height = 480, units = "px")

attach(data)

#Plotting dates vs GAP
plot(Date_time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")

#adding labels to x axis
axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

#creating lines between the points
lines(Date_time, Global_active_power, col = "black")

dev.off()

