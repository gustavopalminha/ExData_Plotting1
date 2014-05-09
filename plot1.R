data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
data <- subset(data, as.Date(data$Date, format="%d/%m/%Y") %in% as.Date(c("2007-02-01", "2007-02-02"), format="%Y-%m-%d"))
png(file = "plot1.png", width = 450, height = 450, units = "px")
hist(as.numeric(as.character(data$Global_active_power)),
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "Red")
dev.off()