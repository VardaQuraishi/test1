my_age <- 12
your_age <- 14
sum(my_age, your_age)
plot(cars)
hist(cars$speed)
attach(cars)
hist(dist)
summary(cars)
summary(cars$speed)
class(cars)
class(cars$speed)
length(cars$speed)
unique(cars$speed)
head(cars)
tail(cars)
cars[3:6, 1:2]
?median
median(cars$dist)
new_data <- c(2,4,6,3,NA,9)
median(new_data, na.rm = TRUE)

library(tidyverse)
data()
?starwars
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
head(starwars)
tail(starwars)

attach(starwars)
names(starwars)
length(starwars)
class(hair_color)
length(hair_color)
unique(hair_color)
View(sort(table(hair_color), decreasing = TRUE))
barplot(sort(table(eye_color), decreasing = TRUE))

library(tidyverse)
data()
View(starwars)

glimpse(starwars)

#Find missing data
starwars %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.))

#dropping NA values
starwars %>% 
  select(name, gender, hair_color, height) %>% 
  drop_na(height,gender)

#replacing NA values
starwars %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.)) %>% 
  mutate(hair_color = replace_na(hair_color = "none"))

install.packages("gapminder")
library(gapminder)

View(gapminder)
data <- select(gapminder, country, year, lifeExp)
View(data)

#long to wide conversion
wide_data <- data %>% 
  pivot_wider(name_from = year, values_from = lifeExp)
  #year are columns
View(wide_data)

# wide to long conversion
long_data <- wide_data %>% 
  pivot_longer(2:13, #from column 2 to 13
               names_to = "year",
               value_to = "lifeExp"
               )
install.packages("MASS")
library(MASS)
attach(Cars93)

table(Origin)
table(AirBags, Origin) #Airbags for rows origin for column
addmargins(table(AirBags, Origin)) #Summing both columns and rows
addmargins(table(AirBags, Origin),1) #summing only columns
addmargins(table(AirBags, Origin),2) # summing only rows
prop.table(table(AirBags, Origin),1) *100 #proportion of airbags in a certain origin

library(tidyverse)
Cars93 %>% 
  group_by(Origin, AirBags) %>% 
  summarise(number = n()) %>% #n number of airbags in an orgin
  pivot_wider(names_from = "Origin",
              values_from = "number")
  
