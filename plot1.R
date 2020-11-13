hpc=read.table(unzip("household_power_consumption.zip"),sep=";",header=TRUE)
subpower <- subset(hpc,hpc$Date=="1/2/2007" | hpc$Date =="2/2/2007")
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()

