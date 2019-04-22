# 432 Spring 2019 Class 24: 2019-04-25

- Professor Love's Slides will be posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/432_2019_slides24.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/432_2019_slides24.Rmd).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. Quiz 2 will be made available to you by 5 PM on 2019-04-25. It is due at 2 PM on 2019-05-02.
2. Your project presentation will be on 04-29, 04-30, 05-02, or 05-07. The [schedule is here](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-schedule.md)
3. Your project portfolio is due on 2019-05-07 at 2 PM, regardless of when your presentation is scheduled.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/figures/tyner.PNG) from [Dr. Sam Tyner](https://twitter.com/sctyner/status/1119341854426845186?s=11)

## from Nik Krieger

- Github repository for [the sociome package](https://github.com/NikKrieger/sociome)
- Github repository for [the projects package](https://github.com/NikKrieger/projects)

## On Propensity Scores and the Design and Analysis of Observational Studies

1. Take my 500 course next Spring.
2. Take a look at [some of the materials from a workshop I gave last year](https://github.com/THOMASELOVE/ichps2018) on the subject at the International Conference on Health Policy Statistics.

## Some Possibly Useful Resources

1. [Plots within Plots with ggplot2 and ggmap](https://statisticaloddsandends.wordpress.com/2019/02/24/plots-within-plots-with-ggplot2-and-ggmap/).
2. from @EpiEllie: [This is why](https://twitter.com/EpiEllie/status/1095864462664495105) your data science needs causal inference!
3. Some people complain about using R, instead of some other software. If you get this complaint, take a look [at this Twitter stream](https://twitter.com/SameerDesai1/status/1095907255755526145).
4. Here is a [community-sourced data science repository](https://github.com/Chris-Engelhardt/data_sci_guide). The overarching goal here is to provide anyone interested in learning data science with a wealth of open source, industry-best learning materials and learning tracks. This started out with the [links for learning more about data science provided in this Twitter stream](https://twitter.com/EngelhardtCR/status/1116743032492253185).
5. There's a [new Shiny Developer Series podcast](https://shinydevseries.com/post/ep0/). 
6. from Timo Grossenbacher, some [bivariate maps with ggplot2 and sf](https://timogrossenbacher.ch/2019/04/bivariate-maps-with-ggplot2-and-sf/)
7. [Large studies reduce random error, but not systematic error](https://twitter.com/aztezcan/status/1119233306300563460)
8. One of the major things I hope to do this summer is finish reading and really understanding Richard McElreath's book [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](http://xcelab.net/rm/statistical-rethinking/).
    - McElreath has [a series of freely available lectures on the book](https://www.youtube.com/channel/UCNJK6_DZvcMqNSzQdEkzvzA/playlists).
    - A. Solomon Kurz [has built a supplement to the book - a recoding of the work in Statistical Rethinking](https://bookdown.org/connect/#/apps/1850/access) using [the `brms` package for doing Bayesian regressions in R](https://github.com/paul-buerkner/brms), as well as using the tidyverse. It looks terrific.
9. If you're interested in [Advanced R, by Hadley Wickham](http://adv-r.had.co.nz/), you're probably also interested in [this solutions manual](https://advanced-r-solutions.rbind.io/).
10. You may also be interested in [Hadley's R Packages](http://r-pkgs.had.co.nz/) book.
11. I can also recommend Brian Caffo's [Regression Models for Data Science in R](https://leanpub.com/regmods), and Roger Peng's [Exploratory Data Analysis with R](https://leanpub.com/exdata) and Rafael Irizarry's [Introduction to Data Science](https://leanpub.com/datasciencebook).
12. [ModernDive remains a terrific resource](https://moderndive.com/) for statistical inference via data science.
13. These [Data Science primers](https://rstudio.cloud/learn/primers) built [using the learnr package](https://rstudio.github.io/learnr/) are fantastic!
14. A new version of the very helpful [janitor package](http://sfirke.github.io/janitor/news/index.html) was just released.
15. I haven't tried it yet, but [live spell-checking is now available](https://twitter.com/benmarwick/status/1119508539171409920/photo/1) in the daily version of R Studio.
16. Here's a nice video from David Spiegelhalter on "[What would Florence Nightingale make of big data](https://www.bbc.com/ideas/videos/what-would-florence-nightingale-make-of-big-data/p075lxkt?playlist=thinkers-from-the-past-on-the-world-today)?"
17. Interested in implementing machine learning ensemble strategies, like the SuperLearner? Check out [Alex Hayes' post using tidymodels to implement the SuperLearner](https://www.alexpghayes.com/blog/implementing-the-super-learner-with-tidymodels/).
18. [Dataquest.io](https://www.dataquest.io/) may be an attractive way to learn something specific we haven't covered. The Data Analyst in R pathway appears to be free, at least, at the moment.
19. Check out this new article by Bates, Machler, Bolker and Walker on [Fitting Linear Mixed-Effects Models using lme4](https://www.jstatsoft.org/article/view/v067i01/0?utm_campaign=digest&utm_medium=email&utm_source=nuzzel)
20. Some [great resources (and demos) are gathered here by Mara Averick](https://connect.rstudioservices.com/content/282/gov1005.html)
21. Want to create dynamic dashboards using the shinydashboard R package? [Check this out](https://leanpub.com/c/shinydashboard).
22. The [colorblindr package](https://github.com/clauswilke/colorblindr) may be of interest to some of you. It lets you make a figure in ggplot2 and then look at it in various color-vision-deficiency simulations. Still doesn't cover everyone, but it might help a bit. It also provides an alternative to viridis that some people like. [Color Oracle](https://colororacle.org/) can also help.
23. Some thoughts from Josef Hajnala on [starting an R blog](https://jozefhajnala.gitlab.io/r/r914-one-year-r-blogging/).
24. From Darren Dahly, [here is a simulation to demonstrate how you should decide which covariates to adjust for in the context of a randomized controlled trial.](https://threadreaderapp.com/thread/1115902270888128514.html)
25. [25 examples of tables built using the `gt` package in R](https://frm1789.github.io/gt_examples/).

## And, finally - I'm in a show April 26 - May 18

The [details are here](https://github.com/THOMASELOVE/theater). Please don't feel any obligation to attend, but come if you'd like to. Thanks.
