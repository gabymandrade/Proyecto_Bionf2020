# Script to graph in ggplot2 the reads by population of plate 1

# Martínez-Andrade Gabriela, mayo 2020. 


# Load the library ggplot2
library(ggplot2)
library(wesanderson)


# Upload file
reads<-read.delim("../meta/reads_processradtags_plate1.txt")


# Browse pre-loaded data
head(reads)


# Change order of levels
reads$sample<-factor(reads$Sample, levels = reads$Sample[order(1:length(reads$Sample))])
head(levels(reads$Sample))


# Graph
# Plot in the first part i define the axes, with axis.text.x i'm going to rotate names samples, and with
# and with scale_fill_manual, I'm going to color the graph with GrandBudapest2, from the color palette of
# Wes Anderson
p <- ggplot(data=reads, aes(x=Sample, y=Reads, fill=Population)) + geom_bar(stat="identity") + theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size=4)) + 
  scale_fill_manual(values=wes_palette("GrandBudapest2", 36, type = "continuous"))
p



