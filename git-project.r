# git project

names <- read.csv("baby-names.csv", header = T, stringsAsFactors = F)

# extracting all data related to my name
my_name <- subset(names, name == "Christine" & sex == "girl")

# plotting my name's popularity over time
library(ggplot2)
qplot(year, prop, data = my_name, geom = "line", main = "Percentage of children named Christine, by year")

# for later
both_names <- rbind(my_name, second_name)

qplot(year, percent, data = both_names, geom = "line", colour = name, main = "Popularity of group member names over time")
ggsave("names.pdf", width = 5, height = 4)
