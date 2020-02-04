joined_data_vehicles_bal <- NEI[NEI$SCC %in% SCC$SCC[grep("Vehicles",SCC$EI.Sector)] & NEI$fips == "24510",]
joined_data_vehicles_los <- NEI[NEI$SCC %in% SCC$SCC[grep("Vehicles",SCC$EI.Sector)] & NEI$fips == "06037",]
par(mfrow = c(2,1), mar = c(2,4,1,1))
plot(joined_data_vehicles_bal$Emissions, xlab="year", ylab = "Motor Vehicle Emissions - Baltimore", xaxt = "n", type="l")
axis(1,at = c(0,350,700,1000), labels = c("1999", "2002", "2005", "2008"))
plot(joined_data_vehicles_los$Emissions, xlab="year", ylab = "Motor Vehicle Emissions - Los Angeles", xaxt = "n", type="l")
axis(1,at = c(0,300,600,900), labels = c("1999", "2002", "2005", "2008"))
dev.copy(png,"Plot6.png")
dev.off()


