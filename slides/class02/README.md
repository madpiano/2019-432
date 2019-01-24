# 432 Spring 2019 Class 02: 2019-01-24

- Professor Love's Slides are now available: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/432_2019_slides02.pdf), or [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/432_2019_slides02.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

- [Homework 1](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due 2019-02-01 at 2 PM.
    - After today's class, you should certainly be able to do Questions 1 and 4, and perhaps the other two, as well.
- [Project 1 Proposal](https://github.com/THOMASELOVE/2019-432/tree/master/projects) is due 2019-02-15 at 2 PM. It's worth your while to read about that over the weekend. The hardest part is identifying an appropriate data set.

## Today's Materials

- We'll provide feedback in response to the [Minute Paper after Class 01](http://bit.ly/432-2019-minute01).
- We'll also touch on the [Glossary of Statistical Terms](http://hbiostat.org/doc/glossary.pdf) by Frank Harrell & others (2019). 
- We'll be discussing the BRFSS/SMART example, an earlier version of which is introduced in [Chapter 2 of the Course Notes](https://thomaselove.github.io/2019-432-book/linear-regression-on-a-small-smart-data-set.html).

Specifically, today, we'll be looking at data from the 2017 version of SMART BRFSS. Information on how I compiled the data we'll use in class today (and for a while) can be found in the [smart_2017 folder on our Data and Code page](https://github.com/THOMASELOVE/2019-432/tree/master/data-and-code/smart_2017). 

## Tweet of the Day

- For those of you working on a Table 1, may I suggest that you look at the [furniture package](https://github.com/TysonStanley/furniture) and its very useful `table1` function, as built by [Tyson Barrett](https://twitter.com/healthandstats/status/975065472331792384)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/tyson02.PNG)

And what does the result look like?

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/tyson01.PNG)

- You may also be interested in this idea from Andrew Heiss, which led me to the tweets above:

![https://twitter.com/andrewheiss/status/973325552596664321](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/heiss01.PNG)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/heiss02.PNG)

## Announcements

1. There are three days in March (2019-03-07, 2019-03-26 and 2019-03-28) when our usual class recorder will be unavailable. Is there anyone else in the room who would be willing to record the class for us on those days? If so, please let us know through 431-help at case dot edu.

2. Minute Paper after Class 1 results and feedback are now posted at **LINK TO COME**.

3. There's an interesting new paper titled "[Good practices for sharing analysis-ready data in mammalogy and biodiversity research](https://t.co/ZvgdSwcukw)" from the Italian Journal of Mammalogy on data rectangling and biodiversity informatics, by Luis Darcy Verde Arregoitia, Natalie Cooper and Guillermo D'Elia. The paper touches on lots of issues with using spreadsheets in specimen-based research. It's got lots of good practices in it, and they are described well, so I think that it would be relevant to all of you. Thanks to [Jenny Bryan for tweeting about it](https://twitter.com/JennyBryan/status/1088183942614724608).

4. As part of Homework 1, you'll be getting a GitHub account. You're going to want to learn more. I cannot recommend [Happy Git and GitHub for the useR](https://happygitwithr.com/) by Jenny Bryan, the STAT 545 TAs, and Jim Hester enough. Chapter 4 tells you everything you need to know about registering a GitHub account.

## Visualization of the Day

From [The New York Times, 2012-05-05](https://archive.nytimes.com/www.nytimes.com/interactive/2012/05/05/sports/baseball/mariano-rivera-and-his-peers.html?ref=baseball) by Shan Carter, Tom Giratikanon, Ritchie S. King and Kevin Quealy.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/mo01.PNG)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class02/figures/mo02.PNG)

## Next Time

We'll be continuing our discussion of linear models in the SMART BRFSS data, continuing with analysis of variance, and then moving into analysis of covariance, and expanding on to more interesting strategies for using linear models in practical work.
