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
install.packages("usethis")
install.packages("tidyverse")
library("tidyverse")
require("tidyverse")
data()
View(starwars)
starwars %>%
  select(gender,mass,height,species) %>% 
  filter(species == "Human") %>% 
  na.omit() %>% 
  mutate(height = height/100) %>% 
  mutate(BMI = mass / height^2) %>% 
  group_by(gender) %>% 
  summarise(averageBMI = mean(BMI))

#pipe operator %>% shift + ctrl + m
my_data %>% 
  select(Name,Age,Height) %>% 
  filter(Age < 24 & Height > 1.78) %>% 
  arrange(Height)

?read_excel

#structure of data frame
str(my_data)
my_data$Height <- as.factor(my_data$Height) # categorize
my_data$Age <- as.integer(my_data$Age)
levels(my_data$Height)
my_data$Height <- factor(my_data$Height,
                         levels = c("Short", "Medium", "Tall"))
my_data$old <- my_data$Age > 23
class(my_data$old)
str(my_data)

#rename and re ordering columns
sw <- starwars %>% 
  select(name, mass, height) %>% 
  rename(weight = mass)
  