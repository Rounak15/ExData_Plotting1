

# Reading the data:

data <- read.csv("PowerConsumption.csv")

#creating graphics device
png(filename = "Plot1.png", width = 480, height = 480, units = "px")

# Selecting column
GAP <- data$Global_active_power

#creating histogram
hist(GAP, col='red',main = "Global Active Power", xlab = "Global Active Power (kilowatts)",breaks = 12)

dev.off()
