joined_data_vehicles <- NEI[NEI$SCC %in% SCC$SCC[grep("Vehicles",SCC$EI.Sector)] & NEI$fips == "24510",]
plot(joined_data_vehicles$Emissions, xlab="year", ylab = "Motor Vehicle Emissions - Baltimore", xaxt = "n", type="l")
axis(1,at = c(0,350,700,1000), labels = c("1999", "2002", "2005", "2008"))
dev.copy(png,"Plot5.png")
dev.off()