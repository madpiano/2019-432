# 432 Spring 2019 Class 19: 2019-04-09

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class19/432_2019_slides19.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class19/432_2019_slides19.Rmd).
    - We will discuss methods for describing and harnessing time-to-event data. 
    - See [Chapter 21 of the Course Notes](https://thomaselove.github.io/2019-432-book/exploring-time-to-event-survival-data.html) for more details.
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. [Homework 5](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5) due at 2 PM on Friday 2019-04-12. Submit via [Canvas](https://canvas.case.edu/).
    - You should be able to do all of the questions in this assignment now.
2. [Homework 6](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework6) due at 2 PM on Monday 2019-04-22. Submit via [Canvas](https://canvas.case.edu/).
    - In Questions 1-2, you will need to build and describe a visualization using real data. Two good potential sources of data for this work are [FiveThirtyEight's data repository](https://data.fivethirtyeight.com/), and the [Tidy Tuesday repository](https://github.com/rfordatascience/tidytuesday). Health Policy Institute of Ohio has [just released its 2019 Health Value Dashboard](https://www.healthpolicyohio.org/2019-health-value-dashboard/), which has some available data that *might* be appropriate.

## Project Presentation Schedule information

is coming soon.

## Announcements

1. I expect you received my email last week. I'll link here to the R-Ladies Global response: [R-Ladies Global disapproval of DataCamp's handling of sexual harrassment](https://blog.rladies.org/post/statement-about-datacamp/). This [thread contains numerous suggestions about places to go instead](https://twitter.com/kierisi/status/1114162997604311040?s=11), incluing this [link to 600 websites about R](https://www.datasciencecentral.com/profiles/blogs/600-websites-about-r), for example.

2. The Consortium for the Advancement of Undergraduate Statistics Education (CAUSE) just announced their 35th Cartoon Caption Contest.  Each month a cartoon, drawn by British cartoonist John Landers, is posted for people to suggest statistical captions. The next cartoon and the entry rules for the contest ending April 30 are at https://www.causeweb.org/cause/caption-contest/april/2019/submissions.

3. As part of [a Twitter thread started by @melikedonertas about useful ggplot2 extensions](https://twitter.com/melikedonertas/status/1114954744320208896?s=11), I've learned of a few tools that you may find useful. For instance, you might take a look at
    - `ggplotr`, described [here](https://rpkgs.datanovia.com/ggpubr/) and [here](https://github.com/kassambara/ggpubr) tries to provide some easy-to-use functions for creating and customizing 'ggplot2'- based publication ready plots.
    - `ggforce` is a collection of features for a variety of things (including new layers, faceting, transformations and scaling) as described [in this vignette](https://cran.r-project.org/web/packages/ggforce/vignettes/Visual_Guide.html) and also [at the main Github repository](https://github.com/thomasp85/ggforce).
    
4. Here's a [nice explanatory storybench post](http://www.storybench.org/pivoting-data-from-columns-to-rows-and-back-in-the-tidyverse/) about the [new tools for pivoting data](https://tidyr.tidyverse.org/dev/articles/pivot.html) from columns to rows and back again in the tidyverse.

5. There's a [package called summarytools](https://cran.r-project.org/web/packages/summarytools/vignettes/Introduction.html) developed by Dominic Comtois that you might want to look at if you want to summarize all of the variables in a data frame instantly. Source: [this tweet by @DataSci_Guy](https://twitter.com/datasci_guy/status/1115122861734285313?s=11). This looks like an extremely useful tool.

6. For those of you who need to build a conference poster, check out [posterdown](https://github.com/brentthorne/posterdown) and its new `posterdown_betterland` and `posterdown_betterport` templates which use the [#betterposter](https://twitter.com/mikemorrison/status/1110191245035479041) design approach ([watch the cartoon!](https://www.youtube.com/watch?v=1RwJbhkCA58&feature=youtu.be)) to lay out a poster in a way that stands out from the crowd.

7. Those of you interested in a more detailed discussion regarding the use of polynomial regression as an alternative to neural network methods might want to look at this [arXiv paper](https://arxiv.org/abs/1806.06850). The upshot is that polynomial regression [often performs as well as neural networks without having to do some difficult things](https://twitter.com/sarahklenha/status/1114696751666028544?s=11), and [the polyreg package](https://github.com/matloff/polyreg) can help. Of course, [I would also argue that splines may be better still](https://twitter.com/alexpghayes/status/1114904498286231552), for several reasons.

8. If you want some advice on taking notes in class, you might take a look at the [Cornell method](https://www.youtube.com/watch?v=HJCnqj7j7rU). Or, you might be interested in [this approach to taking notes using LaTeX](https://castel.dev/post/lecture-notes-1/), if you're familiar with that tool.

## Visualizations of the Day (as referenced in Today's Slides)

1. [What's Warming the World](https://www.bloomberg.com/graphics/2015-whats-warming-the-world/) from *Bloomberg*, 2015.
2. [Income Mobility](https://www.bloomberg.com/graphics/2015-whats-warming-the-world/) from *The New York Times*, 2018-03-27.

