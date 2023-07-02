library('tidyverse')
library(ggthemes)

read.delim('clipboard')->gate_students_year


gate_students_year %>%
  pivot_longer(-1) %>%
  rename(Stream=name) %>%
  ggplot(aes(x= year, y=value, col=Stream)) +
  geom_point(shape=3, size=1) + geom_line(size=1) +
  labs(title='Number of students appeared for GATE',
       caption = '@TheDataVoyage') +
  ylab('Number of students') +
  xlab('Year') +
  theme_economist()


number_of_jobs <- read.delim('clipboard')

number_of_jobs %>%
  pivot_longer(-1) %>%
  filter(name !='CSE') %>%
  ggplot(aes(x=name, y=value, fill=name)) +
  geom_bar(stat='Identity') +
  labs(title='Number of listed jobs on Indeed',
       caption = '@TheDataVoyage') +
  theme_hc() +
  ylab('Number of jobs') +
  xlab('Stream') +
  theme(legend.position = 'none') +
  scale_fill_hc("darkunica")
                

average_salary <- read.delim('clipboard')


average_salary %>%
  pivot_longer(-1) %>%
  ggplot(aes(x=name, y=value, fill=name)) +
  geom_bar(stat='Identity') +
  labs(title='Average salary for freshers',
       caption = '@TheDataVoyage') +
  theme_hc() +
  ylab('Salary per month') +
  xlab('Stream') +
  theme(legend.position = 'none') +
  scale_fill_hc("darkunica")
