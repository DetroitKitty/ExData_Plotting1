## Plot 2 - Global Active Power minute by minute
## Add date time for ordered x axis; start with date from plot 1
p2data <- mutate(p1data,DateTime = as.POSIXct(strftime(paste(as.character(Date),Time))
## Experiment with wider left and bottom margins
margins <- c(5.1,5.1,4.1,3.1)
par("mar"=margins)
png("plot2.png",width=480,height=480)
plot(p2data$DateTime,p2data$GlActivePower,type="l",xlab="",ylab="")
mtext(side=2,"Global Active Power (kilowatts)",line=2)
dev.off()