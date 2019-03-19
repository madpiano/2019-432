# 432 Spring 2019 Class 14: 2019-03-21

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class14/432_2019_slides14.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class14/432_2019_slides14.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Slides from Last Class

We will actually begin today with [Slide 36 from Class 13](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class13/432_2019_slides13.pdf), before moving on to the planned [Slides for Class 14](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class14/432_2019_slides14.pdf).

## Deliverables

1. [Homework 4](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework4) is due at 2 PM on Friday, 2019-03-22. You should be able to do all four parts of the Homework now.
    - [Homework 5](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5), and [Homework 6](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework6) are also available.
2. The [Quiz 1 Honors Opportunity](https://github.com/THOMASELOVE/2019-432/blob/master/quizzes/quiz1_honors/README.md) is due at 2 PM Monday 2019-03-25. I hope that everyone takes advantage of this. 
3. The [Project 2 Registration and Scheduling Form](http://bit.ly/432-2019-project2-registration) is due at 9 AM Monday 2019-04-08. 

## Project 2 Materials

- Thorough [Instructions for Project 2](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project2) are now available. Please review them closely. This includes links to:
    - The Project 2 [Registration and Scheduling Form](http://bit.ly/432-2019-project2-registration), at http://bit.ly/432-2019-project2-registration.
    - The Project 2 Portfolio Template, available [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-template-432-2019.Rmd), and [in HTML at RPubs](http://rpubs.com/TELOVE/project2-template-432-2019).

## Some Project Advice

- As [Brendan Molin](https://twitter.com/bmo_molin/status/969596193692180480?s=11) suggests, don't skimp on the exploratory data analysis.
- The key to a mind-capturing project is **good visualization** of the data. Show us the data!
    - You may be interested in this list of [50 `ggplot2` Visualizations (with R code)](http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html) which also links to some more introductory materials. If you want to build a waffle chart, dumbbell chart, slope chart, show clusters, build maps, or many more things, this is a nice resource. Some of the tools it uses come from the `ggExtra` package.
    - You may also like this [graphics companion from Trafford Data Lab](http://www.trafforddatalab.io/graphics_companion/index.html) which demonstrates a range of useful graphical forms via `ggplot2`.
- From [Andrew Gelman](http://andrewgelman.com/2018/03/02/audition-fools-explore/): Two important attributes of a good scientist are (a) an openness to being surprised and (b) a willingness to do the hard work to collect data of high enough quality to be able to surprise you.

## An Old Example / Homework Assignment

The NNYFS1 example we'll refer to in the slides today is outlined in detail (including answers to the questions) in its folder on our Data and Code page. [Here is the Github Markdown document](https://github.com/THOMASELOVE/2019-432/blob/master/data-and-code/nnyfs_old_homework/nnyfs_old_homework.md), and here are [the R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/data-and-code/nnyfs_old_homework/nnyfs_old_homework.Rmd) and [the data set](https://github.com/THOMASELOVE/2019-432/blob/master/data-and-code/nnyfs_old_homework/data/nnyfs1.csv).

## Is this what you're waiting for? (as described by [Jenny Bryan](https://twitter.com/jennybryan/status/1103066293190615041))

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class14/figures/jennybryan_tw.PNG)

If you are waiting for me to tell you this, then prepare for disappointment.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class14/figures/paul_tw.PNG)

## A Generic Example: Developing A Rubric for Describing an Effect Size

Please see [the Generic Example](https://github.com/THOMASELOVE/2019-432/tree/master/data-and-code/generic_example) on our [Data and Code page](https://github.com/THOMASELOVE/2019-432/tree/master/data-and-code). 
- This example will provide a longer-term in-class discussion activity over the next few sessions. Today, we'll spend some time developing an initial approach for Questions 1-4.
- The `generic.csv` data set I used to craft the example (based on real data from part of the SUPPORT / right heart catheterization study) is [also provided](https://github.com/THOMASELOVE/2019-432/blob/master/data-and-code/generic_example/data/generic.csv). 
- Dr. Love’s [Note on Estimating and Interpreting Effect Sizes](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class12/class12note.pdf) from Class 12 is still relevant here.
- Dr. Love's [On Describing Effects in Regression Models: Towards a Checklist](http://bit.ly/432-2019-effects-checklist) is available for your review and comment at http://bit.ly/432-2019-effects-checklist.

## Machines Don't Create Random Numbers Well: Should This Worry Me?

A student was good enough to ask:

> I was reading about how machines cannot really generate randomness and therefore, when asked to perform a task that requires randomization, a machine could only generate a pseudo randomization by complicated mathematical formula's yet not randomized. So, that got me thinking. When we are analyzing a dataset, how could the use of pseudo-randomization  affect and therefore potentially skew any conclusions we make from a sample subject pool within a given patient population? Do you think it possibly does? 

This isn't something that I'm overly concerned about, in practice. In order to skew conclusions one way or another, you'd have to be able to demonstrate a bias in your random number generator, and that would be quite unlikely with most current approaches, for most practical purposes. There are always exceptions, of course, and if you want to get somewhat more "random" random numbers, consider atmospheric approaches, for instance at https://www.random.org/randomness/.

## EpiBookClub meets at 2:30 today in Wood WG 82-C

- This week we will be discussing the last two chapters of Healy's Data Viz book - Chapter 7 (Maps) and Chapter 8 (Refining Your Plots).
- If you have any plots or graphs you'd like to share with the group (plus R code), please bring them and we can put them on the big screen.
- Think about what we should do with this club next - the book will be over with but hopefully our meetings will not be. Wyatt and I would like to continue meeting.

## Discussion of the Minute Paper Results

To come.

## Discussion of the Project 1 Results

To come.

