mydata <- read.csv("~/Desktop/Final DATA SET.csv")
attach(mydata)

require(zoo)    
require("dyn")

Price1<-ts(mydata$Price,start=1986,frequency=4)
Days1<-ts(mydata$Days,start=1986,frequency = 4)
Caputil1<-ts(mydata$Caputil,start=1986,frequency = 4)
Quota1<-ts(mydata$Quota,start=1986,frequency = 4)
Cheat1<-ts(mydata$Cheat,start=1986,frequency = 4)

plot_colors <- c("blue","red","forestgreen","purple","black")
plot_colors
data_use<-data.frame(Price1,Days1,Caputil1,Quota1,Cheat1)
max_y<-max(data_use)
plot(Price1, type="l", col=plot_colors[1],ylim=c(0,max_y),ann=FALSE)

lines(Days1, type="l", pch=22, lty=2, 
      col=plot_colors[2])
lines(Caputil1, type="l", pch=23, lty=3, 
      col=plot_colors[3])
lines(Quota1, type="l", pch=24, lty=4, 
      col=plot_colors[4])
lines(Cheat1, type="l", pch=25, lty=5, 
      col=plot_colors[5])

title(main="Cointergrating Varibles", col.main="black", font.main=4)

title(ylab= "Million Barrels per Day")
names(data_use)


legend("bottomright", names(data_use), cex=0.35
       , col=plot_colors, 
       lty=1:5, lwd=2, bty="n")