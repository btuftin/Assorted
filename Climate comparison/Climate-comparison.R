library(tidyverse)

file_name <- "Temps-ChapelHill.csv"
data <- read_csv(file_name, col_types = "fdddf")

data %>% filter(Location != "Chapel Hill") %>% ggplot(aes(x = Month, y = `Daily mean`, ymin = `Average low`,
                    ymax = `Average high`, color = Location)) +
  geom_crossbar(fatten =5, position = position_dodge(width = 0.6)) +
  ylab("Temperature in F") +
  ggtitle("Average max, min and mean daily temperature per Month") +
  scale_y_continuous(sec.axis = sec_axis(trans = ~ (. - 32)*5/9, name = "Temperature in C")) +
  theme_bw() +
  theme(legend.position = c(.1, .8))

data %>% filter(Location != "Boston") %>% ggplot(aes(x = Month, y = `Daily mean`, ymin = `Average low`,
                                                          ymax = `Average high`, color = Location)) +
  geom_crossbar(fatten =5, position = position_dodge(width = 0.6)) +
  ylab("Temperature in F") +
  ggtitle("Average max, min and mean daily temperature per Month") +
  scale_y_continuous(sec.axis = sec_axis(trans = ~ (. - 32)*5/9, name = "Temperature in C")) +
  theme_bw() +
  theme(legend.position = c(.15, .8))

data %>% filter(Location != "Oslo") %>% ggplot(aes(x = Month, y = `Daily mean`, ymin = `Average low`,
                                                     ymax = `Average high`, color = Location)) +
  geom_crossbar(fatten =5, position = position_dodge(width = 0.6)) +
  ylab("Temperature in F") +
  ggtitle("Average max, min and mean daily temperature per Month") +
  scale_y_continuous(sec.axis = sec_axis(trans = ~ (. - 32)*5/9, name = "Temperature in C")) +
  theme_bw() +
  theme(legend.position = c(.15, .8))
