library(tidyverse)
background <- read_csv("data/background-clean.csv", show_col_types = FALSE)
background %>%
  count(research)

background %>%
  count(math.comf)

background %>%
  count(stat.comf)

background %>%
  count(prog.comf)

## First Graph (Math)
ggplot(background, aes(x=research, y =math.comf))+ geom_boxplot() + labs(title = "Math Confidence by Research Experience", 
       x="Research Experience", 
       y = "Math Confidence")

## Second Graph (Math)
ggplot(background, aes(x=research, y = stat.comf)) + geom_boxplot() + 
  labs(title="Statistics Confidence by Research Experience", 
       x="Research Experience",
       y="Statistics Confidence"
  )

## Third Graph (Programming)
ggplot(background, aes(x=research, y = prog.comf)) + geom_boxplot() + 
  labs(title="Programming Confidence by Research Experience", 
       x="Research Experience",
       y="Programming Confidence"
  )


##Summary Stats
background %>%
  group_by(research) %>%
  summarize(
    mean_math = mean(math.comf, na.rm = TRUE),
    mean_stat = mean(stat.comf, na.rm = TRUE),
    mean_prog = mean(prog.comf, na.rm = TRUE)
  )
