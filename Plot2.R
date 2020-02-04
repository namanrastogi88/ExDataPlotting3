plot(NEI$Emissions[NEI$fips == '24510'], type = "l", xlab = "year", ylab="Emissions",xaxt = "n")
axis(1,at = c(0,600,1300,2000), labels = c("1999","2002","2005", 2008))
dev.copy(png,"Plot2.png")
dev.off()