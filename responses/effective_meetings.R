library(tidyverse)

library(here)

# How to disagree productively and find common ground ---------------------


cat <- c('Define common goal', 'Be curious, not combative',
  'Find agreement/common ground', 'Listening vs. talking',
  'Be open minded', 'Create a safe space',
  'Humility of uncertainty', 'Structured debate',
  "Ideas, not identity", 'Humanize people', 
  'Anonymous contribution')

cnt <- c(7, 7, 11, 6, 6, 1, 8, 6, 11, 2, 5)

df1 <- as.data.frame(cbind(cat = cat,
                           cnt = cnt)) %>%
  mutate(cnt = as.numeric(cnt))

(plot1 <- ggplot(df1, aes(x = reorder(cat, cnt), y = cnt)) +
  geom_bar(stat = "identity") +
  theme_bw() +
  coord_flip() +
  labs(y = "Count",
       title = 'How to disagree productively') +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_text(size = 15),
        axis.text = element_text(size = 12),
        plot.title = element_text(size = 15)))

ggsave(filename = here('responses',
            'disagree_productive.jpeg'),
       plot = plot1,
       width = 6,
       height =8,
       units = "in")


# Strategies for effecive meteings ----------------------------------------

cat2 <- c('Focused design and purpose',
  'Advanced planning',
  'Inclusivity/diversity',
  'Rotate facilitators',
  'Accountability/follow-up',
  'Stick to time',
  'Include only key participants',
  'How much time do we need?',
  'Feedback after meetings',
  'Meeting stewardship',
  'SNACKS!',
  'Design meetings around questions',
  'Create pressure',
  'Creative meeting format',
  'Room in meeting for reflection')

cnt2 <- c(3, 3, 3, 1, 2, 4, 5, 5, 9,
  4, 3, 7, 2, 6, 2)

df2 <- as.data.frame(cbind(cat = cat2,
                           cnt = cnt2)) %>%
  mutate(cnt = as.numeric(cnt))

(plot2 <- ggplot(df2, aes(x = reorder(cat, cnt), 
                         y = cnt)) +
  geom_bar(stat = "identity") +
  theme_bw() +
  coord_flip() +
  labs(y = "Count",
       title = "Holding effective meetings") +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_text(size = 15),
        axis.text = element_text(size = 12),
        plot.title = element_text(size = 15)))

ggsave(filename = here('responses',
                       'effective_meeting.jpeg'),
       plot = plot2,
       width = 6,
       height =8,
       units = "in")

