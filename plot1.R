

data <- read.table("C:/Users/HP-PC/Documents/coursera/exdata_data_household_power_consumption/household_power_consumption", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

head(subsetData)

GlobalActivePower<- as.numeric(subsetData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(GlobalActivePower, col = "Red" , main = "Global Active Power" , xlab = "Global Active Power (kilowatts)")

dev.off()
