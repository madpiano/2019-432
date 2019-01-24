# 432 Spring 2019 Class 02: 2019-01-24

- Professor Love's Slides are now available: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/432_2019_slides02.pdf), or [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/432_2019_slides02.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

- [Homework 1](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due 2019-02-01 at 2 PM.
    - After today's class, you should certainly be able to do Questions 1 and 4, and perhaps the other two, as well.
- [Project 1 Proposal](https://github.com/THOMASELOVE/2019-432/tree/master/projects) is due 2019-02-15 at 2 PM. It's worth your while to read about that over the weekend. The hardest part is identifying an appropriate data set.


## Announcements

1. There are three days in March (2019-03-07, 2019-03-26 and 2019-03-28) when our usual class recorder will be unavailable. **Update**: We have arranged for a substitute. Thanks!

2. There's an interesting new paper titled "[Good practices for sharing analysis-ready data in mammalogy and biodiversity research](https://t.co/ZvgdSwcukw)" from the Italian Journal of Mammalogy on data rectangling and biodiversity informatics, by Luis Darcy Verde Arregoitia, Natalie Cooper and Guillermo D'Elia. The paper touches on lots of issues with using spreadsheets in specimen-based research. It's got lots of good practices in it, and they are described well, so I think that it would be relevant to all of you. Thanks to [Jenny Bryan for tweeting about it](https://twitter.com/JennyBryan/status/1088183942614724608).

3. As part of Homework 1, you'll be getting a GitHub account. You're going to want to learn more. I cannot recommend [Happy Git and GitHub for the useR](https://happygitwithr.com/) by Jenny Bryan, the STAT 545 TAs, and Jim Hester enough. Chapter 4 tells you everything you need to know about registering a GitHub account.

## Today's Materials

1. Minute Paper after Class 1 results and feedback are now posted at http://bit.ly/432-2019-minute1-results.

2. We'll also touch briefly on the [Glossary of Statistical Terms](http://hbiostat.org/doc/glossary.pdf) by Frank Harrell & others (2019). 

3. Mainly, we'll be discussing the BRFSS/SMART example, an earlier version of which is introduced in [Chapter 2 of the Course Notes](https://thomaselove.github.io/2019-432-book/linear-regression-on-a-small-smart-data-set.html).

- Specifically, today, we'll be looking at data from the **2017 version of SMART BRFSS**. Information on how I compiled the data we'll use in class today can be found in the [smart_2017 folder on our Data and Code page](https://github.com/THOMASELOVE/2019-432/tree/master/data-and-code/smart_2017). 


## Tweet of the Day

- For those of you working on a Table 1, may I suggest that you look at the [furniture package](https://github.com/TysonStanley/furniture) and its very useful `table1` function, as built by [Tyson Barrett](https://twitter.com/healthandstats/status/975065472331792384)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/tyson02.PNG)

And what does the result look like?

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/tyson01.PNG)

## Visualization of the Day

From [The New York Times, 2012-05-05](https://archive.nytimes.com/www.nytimes.com/interactive/2012/05/05/sports/baseball/mariano-rivera-and-his-peers.html?ref=baseball) by Shan Carter, Tom Giratikanon, Ritchie S. King and Kevin Quealy. Quoting the [good folks at Revolution Analytics](https://blog.revolutionanalytics.com/2012/05/mariano-rivera-nyt.html), this infographic began its life as a hand-drawn sketch, that begat a line-chart created using R (based on data scraped from the Web). The R chart was was then cleaned up and annotated using Adobe Illustrator for publication. One interesting detail of the process: the source R graph is deliberately created using garish colours (purples, greens, etc.) to make the color-selection process easier in Illustrator.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/mo01.PNG)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/mo02.PNG)

This was all built after Mr. Rivera, at age 42, suffered a serious injury. But in 2013, he came back to make the All-Star Game again, and add to his record before retiring. His final statistics included: 

- 652 Saves (not counting 42 more in the playoffs)
- 2.21 ERA (not counting a 0.70 ERA in the playoffs)
- 1.000 Walks and hits per allowed per inning (0.759 in the playoffs)
- 1,115 Games (plus 96 more playoff games)
- 0.50 HR allowed per nine innings (0.1 in the playoffs)

## Next Time

We'll be continuing our discussion of linear models in the SMART BRFSS data, continuing with analysis of variance, and then moving into analysis of covariance, and expanding on to more interesting strategies for using linear models in practical work.
