#Save 'household_power_consumption.txt' file from the UCI Machine Learning Repository in the current working dir of R

png(file='plot1.png',width=480,height=480)
cnames = c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')
cnames_class = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')

#Part of the dataset called 'section_data' is loaded using grep and uses 'skip' and 'nrows' arguments in read.table. 
#The grep part of the code is not shown here

section_data = read.table(file='household_power_consumption.txt',header=FALSE,sep=";",na.strings=c("?","NA"),colClasses = cnames_class,skip = 66637,nrows=2880,col.names = cnames)
hist(section_data$Global_active_power,col='red',main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)',ylab = 'Frequency')
dev.off()