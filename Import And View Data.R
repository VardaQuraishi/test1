my_data <- read.csv("friends.csv")

#View Data
head(my_data)
tail(my_data)
View(my_data)

#Extracting Data
my_data[1,3] #row 1 | column 3
my_data[3,]
my_data[,3]
my_data$Eye.colour

#installing a package
install.packages("tidyverse")
install.packages("usethis")

#pipe operator %>% shift + ctrl + m
my_data %>% 
  select(Name,Age,Height) %>% 
  filter(Age < 24 & Height > 1.76) %>% 
  arrange(Height)
