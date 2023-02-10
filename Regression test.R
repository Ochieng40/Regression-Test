
library(ggplot2)
library(tidyverse)
library(ggtext)
library(ggpubr)
library(ggplot2)


install.packages('ggpubr')



dat <- read.csv("H:\\Denis\\Writing\\Academic Writing\\Pollins\\Drosophila.csv")

library(ggplot2)
library(tidyverse)
library(ggtext)
library(ggpubr)
library(ggplot2)
library(dplyr)


dat %>%
  head(3)

dat %>% 
  summary()


## Regression

ggscatter(dat, x = 'winglength', y = 'hindtibia',
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Winglength", ylab = "hindtibia")+
  theme_bw()+
  theme(text=element_text(family="Times", face="bold", size=23))+
  ggtitle("Relationship Between Winglength and hindtibia")



## Statistical Mode

dat_model <- lm(hindtibia ~ winglength, data = dat)

dat_model

summary(dat_model)



## Whether change in unit will affect the slope

# 1 cm equals to 10 mm
# to change values in wing length column we will multiply it with 0.1



dat$winglength <- dat$winglength*0.1
dat

ggscatter(dat, x = 'winglength', y = 'hindtibia',
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Winglength", ylab = "hindtibia")+
  theme_bw()+
  theme(text=element_text(family="Times", face="bold", size=23))+
  ggtitle("Relationship Between Winglength and hindtibia")







