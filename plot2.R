#Save 'household_power_consumption.txt' file from the UCI Machine Learning Repository in the current working dir of R
png(file='plot2.png',width=480,height=480)
cnames = c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')
cnames_class = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')

#Part of the dataset called 'section_data' is loaded using grep and uses 'skip' and 'nrows' arguments in read.table. 
#The grep part of the code is not shown here

section_data = read.table(file='household_power_consumption.txt',header=FALSE,sep=";",na.strings=c("?","NA"),colClasses = cnames_class,skip = 66637,nrows=2881,col.names = cnames)
section_data$Date = as.Date(section_data$Date,format='%d/%m/%Y')
plot(section_data$Global_active_power,type='l',xlab = '',ylab='Global Active Power (kilowatts)',xaxt='n')
#Use grepl to identify row numbers of different dates in the dataset which is not shown here
axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))
dev.off()