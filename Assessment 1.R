---
  title: "Assessment 1"
author: "Uyen Canh s4566710"
date: "25/8/21"
output: html_document
---
  PART 1

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
```

# RMarkdown editing
The **rmarkdown package** helps you create dynamic analysis documents that combine code, rendered output (such as figures), and prose. You bring your *data, code, and ideas, and R Markdown renders* your content into a **polished document**.<br>
  R Markdown documents can be rendered to many output formats including *HTML documents, PDFs, Word files, slideshows*, and more, allowing you to focus on the content while R Markdown takes care of your presentation.<br>
  
  You can find information about basics of RMarkdown on the [official website](https://rmarkdown.rstudio.com/lesson-8.html).

```{r loading dataset}
fastfood <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2018/2018-09-04/fastfood_calories.csv')
```

Display the first 10 rows of the dataset. Use Help to see how you can do this with `head()` function.

```{r first 10 rows of the dataset}
fastfood %>%
  head(10)
```

Display the observations that has more than 1000 calories

```{r more than 1000 calories}
fastfood %>%
  filter(calories > 1000)
```

Save observations with more than 40 in total_fat and more than 80 in total_carb in a new variable called `dont_eat_this`

```{r save obs with over 40 fat and over 60 carb}
dont_eat_this <- fastfood %>%
  filter(total_fat > 40 & total_carb > 80)
```

Using the initial dataset variable, display observations from restaurant Mcdonalds

```{r mcdonalds calories}
fastfood %>%
  filter(restaurant == 'Mcdonalds')
```