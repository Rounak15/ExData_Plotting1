# Reading the data:
data <- read.csv("PowerConsumption.csv")

#creating graphics device
png(filename = "Plot3.png", width = 480, height = 480, units = "px")

attach(data)

#Plotting dates vs enegry sub metering
plot(Date_time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")


#creating lines between the points
lines(Date_time, Sub_metering_1, col = "black")
lines(Date_time, Sub_metering_2, col = "red")
lines(Date_time, Sub_metering_3, col = "blue")

#adding legend
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

#adding labels to x axis
axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))


dev.off()

