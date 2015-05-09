# Plot 2

library(datasets);

powerData <- read.table(file = "household_power_consumption.txt", header = TRUE, sep =";", colClasses = c("character","character",rep("numeric",7)), na.strings = "?");

powerData <- powerData[which(powerData$Date=="1/2/2007" | powerData$Date=="2/2/2007"),];

powerData$DateTime <- as.POSIXct(paste(powerData$Date,powerData$Time),format = '%d/%m/%Y %H:%M:%S')

png("plot2.png", width = 480, height = 480);
with(powerData,plot(DateTime,Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"));
dev.off();
