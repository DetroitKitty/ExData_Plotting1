## Plot of sub metering data 1-3
## Use data from plot 2 (datetime added to original data)
## Set xrange and yrange based on all data to define x and y axes
yrange <- range(c(p2data$SubMetering1,p2data$SubMetering2,p2data$SubMetering3))
xrange <- c(range(p2data$DateTime))
## open plot3.png
png("plot3.png",width=480,height=480)
plot(p2data$DateTime,p2data$SubMetering1,type="l",ylim=yrange,xlim=xrange,xlab="",ylab="Energy sub metering")
## Keep first plot and add second using par(new=T)
par(new=T)
plot(p2data$DateTime,p2data$SubMetering2,type="l",ylim=yrange,xlim=xrange,ylab="",xlab="",col="blue")
## Ditto for third plot
par(new=T)
plot(p2data$DateTime,p2data$SubMetering3,type="l",ylim=yrange,xlim=xrange,ylab="",xlab="",col="red")
## Add legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("black","blue","red"))
dev.off()
