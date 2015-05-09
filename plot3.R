# Plot 3

library(datasets);

powerData <- read.table(file = "household_power_consumption.txt", header = TRUE, sep =";", colClasses = c("character","character",rep("numeric",7)), na.strings = "?");

powerData <- powerData[which(powerData$Date=="1/2/2007" | powerData$Date=="2/2/2007"),];

powerData$DateTime <- as.POSIXct(paste(powerData$Date,powerData$Time),format = '%d/%m/%Y %H:%M:%S')

png("plot3.png", width = 480, height = 480);
with(powerData,plot(DateTime,Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"));
with(powerData,lines(DateTime,Sub_metering_2,col="red"));
with(powerData,lines(DateTime,Sub_metering_3,col="blue"));
legend("topright", lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off();