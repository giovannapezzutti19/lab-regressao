install.packages("data.table")
library(data.table)

pib_cid <- readRDS(url("https://github.com/mgaldino/book-regression/raw/main/dados/pib_cid.RDS"))
library(dplyr)

library(tidyverse)
df= pib_cid %>%
  group_by(sigla_uf) %>%
  summarise(pib_medio_uf = mean(pib_total))
View(df)
library(ggplot2)
pib_cid %>%
  ggplot(aes(y=pib_total, x=impostos)) + geom_point()
x = c(1,2,3,4,5,6,7,8,9,10)
(media= sum(x)/length(x))
mean(x)
