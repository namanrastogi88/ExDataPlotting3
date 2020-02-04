joined_data <- NEI[NEI$SCC %in% SCC$SCC[grep("Coal",SCC$EI.Sector)],]
plot(joined_data$Emissions, xlab="year",ylab = "Emissions from coal related sources", xaxt = "n")
axis(1,at = c(0,8000,16500,25000), labels = c("1999", "2002", "2005", "2008"))
dev.copy(png,"Plot4.png")
dev.off()