## Plot 4 - uses data from plots 2 and 3 (added datetime for x axis)
## Upper and lower left plots are repeats of plots 2 and 3 with legend size for 3 reduced
## Open png file
png("plot4.png",width=480,height=480)
## Set up 2 rows with two plots on each row
par(mfrow=c(2,2))
## Upper left plot (same as plot 2)
plot(p2data$DateTime,p2data$GlActivePower,type="l",xlab="",ylab="Global Active Power (kilowatts)")
## Upper right plot (new plot)
plot(p2data$DateTime,p2data$GlActivePower,type="l",xlab="datetime",ylab="Voltage")
## Lower left plot (same as plot 3)
plot(p2data$DateTime,p2data$SubMetering1,type="l",ylim=yrange,xlim=xrange,xlab="",ylab="Energy sub metering")
## Keep first plot and add second using par(new=T)
par(new=T)
plot(p2data$DateTime,p2data$SubMetering2,type="l",ylim=yrange,xlim=xrange,ylab="",xlab="",col="blue")
## Ditto for third plot
par(new=T)
plot(p2data$DateTime,p2data$SubMetering3,type="l",ylim=yrange,xlim=xrange,ylab="",xlab="",col="red")
## Add legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("black","blue","red"),cex=.75)
## Lower right - new plot
plot(p2data$DateTime,p2data$GlReactivePower,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
