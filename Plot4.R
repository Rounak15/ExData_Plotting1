# Reading the data:
data <- read.csv("PowerConsumption.csv")

attach(data)

# creating graphics device
png(filename = "Plot4.png", width = 480, height = 480, units = "px")

# Creating grid
par(mfrow = c(2, 2))

# 1st plot
plot(Date_time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")
axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
lines(Date_time, Global_active_power, col = "black")

# 2nd plot
plot(Date_time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
lines(Date_time, Voltage, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

# 3rd plot
plot(Date_time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")

lines(Date_time, Sub_metering_1, col = "black")
lines(Date_time, Sub_metering_2, col = "red")
lines(Date_time, Sub_metering_3, col = "blue")


legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

# 4th plot 
plot(Date_time, Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = colnames(data)[3], xaxt = "n")
lines(Date_time, Global_reactive_power, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()

