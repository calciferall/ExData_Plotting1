# Plot 1

library(datasets);

powerData <- read.table(file = "household_power_consumption.txt", header = TRUE, sep =";", colClasses = c("character","character",rep("numeric",7)), na.strings = "?");

powerData <- powerData[which(powerData$Date=="1/2/2007" | powerData$Date=="2/2/2007"),];

png("plot1.png", width = 480, height = 480);
with(powerData,hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"));
dev.off();
