## Plot 1 - Histogram of Global Active Power
## Data is read from zipfile, dates set to date class.
## Classes for data columns
cclasses <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
## load in 44000 rows after skipping 65000 to get dates 2/1/2007 and 2/2/2007
data <- read.table(unz(zipfile,"household_power_consumption.txt"),skip=65000,nrows=44000,header=T,sep=";",colClasses=cclasses,na.strings = "?")
## set data column names
cnames <- c("Date","Time","GLActivePower","GlReactivePower","Voltage","GlIntensity","SubMetering1","SubMetering2","SubMetering3")
colnames(data)<-cnames
## set Date to R date class
data1 <- mutate(data,Date = as.Date(Date, format="%d/%m/%Y"))
d2 <- as.Date("2007/02/02",format="%Y/%m/%d")
d1 <- as.Date("2007/02/01",format="%Y/%m/%d")
## Select data from 2/1/2007 and 2/2/2007
p1data <- data1[data1$Date <= d2 & data1$Date >= d1,]
## Open plot1.png file
png("plot1.png",width=480,height=480)
## Use histogram without axes using main for Title
hist(p1data$GlActivePower,col="red",axes=F,xlab=NA,ylab=NA,main="Global Active Power")
## add left axis w/o ticks (done to set ticks closer to plot)
axis(side=2,labels=NA)
## add horizontal axis
axis(side=1,labels=NA)
## add tick labels suppressing lines (lwd=0), -0.4 lines into margin (move closer to plot)
axis(side=1,lwd=0,line=-.4)
axis(side=2,lwd=0,line=-.4,las=1)  ## las orients tick mark labels horizontally
## add labels
mtext(side=1,"Global Active Power",line=2)
mtext(side=2,"Frequency",line=3)
## close graphing device
dev.off(0)
