#####################################
##R Script to fit simple linear
##regression to happiness data.
##Chapter 8 - S1Z
#####################################

#####################################
##Load libraries
#####################################
library(tidyverse)

#####################################
##Load the data
#####################################

happiness_2021 <- read.csv(url("https://raw.githubusercontent.com/Glasgow-Stats-L1-L2/S1YZ_Data/main/S1Z/Chapter%208/happiness_2021.csv"))

#####################################
##Have a look at data
#####################################
glimpse(happiness_2021)

#####################################
##Scatterplot of happiness score
##and healthy life expectancy
#####################################
ggplot(data = happiness_2021, aes(x = ???, y = ???)) +
  geom_point() +
  labs(title = "Relationship between Happiness Score and Healthy Life Expectancy",
       x = "Healthy Life Expectancy at Birth",
       y = "Happiness Score")

#####################################
##Solution
#####################################
ggplot(data = happiness_2021, aes(x = life.ex, y = score)) +
  geom_point(colour = "#009E73", size =3) +
  labs(title = "Relationship between Happiness Score and Healthy Life Expectancy",
       x = "Healthy Life Expectancy at Birth",
       y = "Happiness Score")



#####################################
##Correlation between happiness score
##and healthy life expectancy
#####################################
happiness_2021 %>%
  summarise(cor(???, ???, use="complete.obs"))

#####################################
##Solution
#####################################
happiness_2021 %>%
  summarise(cor(score, life.ex, use="complete.obs"))




#####################################
##Fitting the linear model
#####################################
m1 <- lm(???~???, data = happiness_2021)
summary(m1)

#####################################
##Solution
#####################################
m1 <- lm(score~life.ex, data = happiness_2021)
summary(m1)
