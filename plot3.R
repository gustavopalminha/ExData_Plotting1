data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
data <- subset(data, as.Date(data$Date, format="%d/%m/%Y") %in% as.Date(c("2007-02-01", "2007-02-02"), format="%Y-%m-%d"))
png(file = "plot3.png", width = 450, height = 450, units = "px")

sm1 = as.numeric(as.character(data$Sub_metering_1), na.rm=TRUE)
sm2 = as.numeric(as.character(data$Sub_metering_2), na.rm=TRUE)
sm3 = as.numeric(as.character(data$Sub_metering_3), na.rm=TRUE)

plot(sm1, type = 'l', xaxt='n', ylab = 'Energy sub metering', xlab = '', col = "Black")
lines(sm2, col = "Red")
lines(sm3, col = "Blue")
axis(1, at = c(0, 1450, 2900), labels=c("Thu","Fri","Sat"))
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()