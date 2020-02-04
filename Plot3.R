library(ggplot2)
data_subset <- NEI[NEI$fips == '24510',]
data_subset <- transform(data_subset, type = factor(data_subset$type)) 
ggplot(data_subset, aes(year,Emissions)) + geom_line() + facet_wrap(facets = data_subset$type)
dev.copy(png,"Plot3.png")
dev.off()