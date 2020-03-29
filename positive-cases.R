library(ggplot2)

princeton <- read.csv(file="princetondata.csv")
princeton$ddate<-strftime(princeton$ddate,"%d/%m/%Y")

ggplot(princeton, aes(x, y = cases, group = 1)) +
  geom_line() + 
  labs(title = "Princeton COVID-19 cases",
       x = "Date",
       y = "Number of cases")

