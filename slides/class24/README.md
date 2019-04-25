# 432 Spring 2019 Class 24: 2019-04-25

- We'll finish up the slides originally provided in [the Class 23 README](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/432_2019_slides23.pdf), today.
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. All information and materials for [Quiz 2 will appear at this link](https://github.com/THOMASELOVE/2019-432/tree/master/quizzes/quiz2), which will be complete and active by 5 PM on 2019-04-25. Quiz 2 is due at 2 PM on 2019-05-02.
2. Your project presentation will be on 04-29, 04-30, 05-02, or 05-07. The [schedule is here](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-schedule.md)
3. Your project portfolio is due on 2019-05-07 at 2 PM, regardless of when your presentation is scheduled.

## Quiz and End of Semester Details

1. TA office hours will continue through Wednesday May 1.
2. 431-help will close at 9 AM on Thursday May 7.
3. The 431 and 432 github repositories will remain open and available to you through the month of May, but will close in June.
4. The ["post-course" README is now available](https://github.com/THOMASELOVE/2019-432/tree/master/slides/post-class), and will be updated into May.
5. There's a typo in the Course Notes section 18.6.2, which should read: "The bmi_c coefficient, ~0.15~ **0.026**, indicates that for each additional kg/m2 of BMI, while holding smoke100 constant, the predicted logarithm of (physhealth + 1) increases by 0.026."

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/figures/tyner.PNG) from [Dr. Sam Tyner](https://twitter.com/sctyner/status/1119341854426845186?s=11)

## from our Guest Speaker: Nik Krieger

- Github repository for [the sociome package](https://github.com/NikKrieger/sociome)
- Github repository for [the projects package](https://github.com/NikKrieger/projects)

## How did Dr. Love build the maps shown back in the Class 15 README?

### The first map (static, built using sociome)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/cuyahoga_adi_map.png)

- See the documentation for this work as a [github markdown file](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/map_example_sociome_TEL/Ohio_sociome_by_tract.md), or in [R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/map_example_sociome_TEL/Ohio_sociome_by_tract.Rmd).
- One thing I haven't yet done is use thematic maps, which [can produce some spectacular results](https://github.com/mtennekes/tmap).
- And if you want to produce 2D and 3D hillshaded maps of elevation matrices, you want [rayshader](https://www.rayshader.com/).

### The [more interactive map, from Better Health Partnership](http://betterhealthpartnership.org/data_center/report_22/maps/report22_overweight_obesity_map.asp) is built using `leaflet`. A screenshot follows...

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/screenshot.PNG)

- See the code (but not the data) in [R Markdown here](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/map_leaflet_TEL/leaflet_map_overweightorobese_rates.Rmd)
- If you want to learn how to build an interactive map using leaflet, I recommend [R Studio's leaflet page](https://rstudio.github.io/leaflet/), as well as learning something about using mini-charts within a leaflet visualization from [this Github repository](https://github.com/rte-antares-rpackage/leaflet.minicharts).
- Here's [another great tutorial](https://github.com/momiji15/apptomap/tree/master/R%20Ready%20to%20Map) to help you learn how to write code to collect tweets using the rtweet package and to display tweets on a basic interactive map using Leaflet for R.

## Some More Things I wanted to Share

### On Propensity Scores, Causal Inference and the Design and Analysis of Observational Studies

1. from @EpiEllie: [This is why](https://twitter.com/EpiEllie/status/1095864462664495105) your data science needs causal inference!
2. Take my 500 course next Spring.
3. Take a look at [some of the materials from a workshop I gave last year](https://github.com/THOMASELOVE/ichps2018) on the subject at the International Conference on Health Policy Statistics.
4. Lucy D'agostino McGowan's [Understanding propensity score weighting](https://livefreeordichotomize.com/2019/01/17/understanding-propensity-score-weighting/) may be very helpful to you.
5. Here is a [reading list of key ideas in causal inference](https://docs.google.com/document/d/1a-_VYQrZDLIAWCUs_JKvnwNT2onn-rIiLh69W53fh1o/edit) designed for a general clinical / public health audience.

### Visualization

1. Want to build your linear regression diagnostic plots using ggplot2? Take a look at [the `lindia` package](https://github.com/yeukyul/lindia).

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/figures/lindia.png)

2. [Plots within Plots with ggplot2 and ggmap](https://statisticaloddsandends.wordpress.com/2019/02/24/plots-within-plots-with-ggplot2-and-ggmap/).
3. from Timo Grossenbacher, some [bivariate maps with ggplot2 and sf](https://timogrossenbacher.ch/2019/04/bivariate-maps-with-ggplot2-and-sf/)
4. The [colorblindr package](https://github.com/clauswilke/colorblindr) may be of interest to some of you. It lets you make a figure in ggplot2 and then look at it in various color-vision-deficiency simulations. Still doesn't cover everyone, but it might help a bit. It also provides an alternative to viridis that some people like. [Color Oracle](https://colororacle.org/) can also help.
5. [25 examples of tables built using the `gt` package in R](https://frm1789.github.io/gt_examples/).
6. In my early days learning to visualize data in R, the most useful book for me was Winston Cheng's [R Graphics Cookbook](https://r-graphics.org/), and the second edition is [now available online, for free](https://r-graphics.org/)!

### On Abraham Wald 

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class24/figures/wald.PNG) from [Seva Gunitsky](https://twitter.com/SevaUT/status/1097880873368801287)

- An excerpt from Jordan Ellenberg's *How Not To Be Wrong* touches on the [Wald story](https://medium.com/@penguinpress/an-excerpt-from-how-not-to-be-wrong-by-jordan-ellenberg-664e708cfc3d)
- Here's a nice video from David Spiegelhalter on "[What would Florence Nightingale make of big data](https://www.bbc.com/ideas/videos/what-would-florence-nightingale-make-of-big-data/p075lxkt?playlist=thinkers-from-the-past-on-the-world-today)?"

### Learning and Using R

1. Here is a [community-sourced data science repository](https://github.com/Chris-Engelhardt/data_sci_guide). The overarching goal here is to provide anyone interested in learning data science with a wealth of open source, industry-best learning materials and learning tracks. This started out with the [links for learning more about data science provided in this Twitter stream](https://twitter.com/EngelhardtCR/status/1116743032492253185).
2. These [Data Science primers](https://rstudio.cloud/learn/primers) built [using the learnr package](https://rstudio.github.io/learnr/) are fantastic!
3. [Dataquest.io](https://www.dataquest.io/) may be an attractive way to learn something specific we haven't covered. The Data Analyst in R pathway appears to be free, at least, at the moment.
4. A new version of the very helpful [janitor package](http://sfirke.github.io/janitor/news/index.html) was just released.
5. I haven't tried it yet, but [live spell-checking is now available](https://twitter.com/benmarwick/status/1119508539171409920/photo/1) in the daily version of R Studio.
6. If you're interested in [Advanced R, by Hadley Wickham](http://adv-r.had.co.nz/), you're probably also interested in [this solutions manual](https://advanced-r-solutions.rbind.io/).
7. You may also be interested in [Hadley's R Packages](http://r-pkgs.had.co.nz/) book.
8. Some [great resources (and demos) are gathered here by Mara Averick](https://connect.rstudioservices.com/content/282/gov1005.html)
9. Want to create dynamic dashboards using the shinydashboard R package? [Check this out](https://leanpub.com/c/shinydashboard).
10. Some people complain about using R, instead of some other software. If you get this complaint, take a look [at this Twitter stream](https://twitter.com/SameerDesai1/status/1095907255755526145).

### Important Issues in Statistics

1. [Large studies reduce random error, but not systematic error](https://twitter.com/aztezcan/status/1119233306300563460)
2. One of the major things I hope to do this summer is finish reading and really understanding Richard McElreath's book [Statistical Rethinking: A Bayesian Course with Examples in R and Stan](http://xcelab.net/rm/statistical-rethinking/).
    - McElreath has [a series of freely available lectures on the book](https://www.youtube.com/channel/UCNJK6_DZvcMqNSzQdEkzvzA/playlists).
    - A. Solomon Kurz [has built a supplement to the book - a recoding of the work in Statistical Rethinking](https://bookdown.org/connect/#/apps/1850/access) using [the `brms` package for doing Bayesian regressions in R](https://github.com/paul-buerkner/brms), as well as using the tidyverse. It looks terrific.
3. I can also recommend Brian Caffo's [Regression Models for Data Science in R](https://leanpub.com/regmods), and Roger Peng's [Exploratory Data Analysis with R](https://leanpub.com/exdata) and Rafael Irizarry's [Introduction to Data Science](https://leanpub.com/datasciencebook).
4. [ModernDive remains a terrific resource](https://moderndive.com/) for statistical inference via data science.
5. Interested in implementing machine learning ensemble strategies, like the SuperLearner? Check out [Alex Hayes' post using tidymodels to implement the SuperLearner](https://www.alexpghayes.com/blog/implementing-the-super-learner-with-tidymodels/).
6. Check out this new article by Bates, Machler, Bolker and Walker on [Fitting Linear Mixed-Effects Models using lme4](https://www.jstatsoft.org/article/view/v067i01/0?utm_campaign=digest&utm_medium=email&utm_source=nuzzel)
7. You may be interested in [Maverick Lin's 10-page "cheat sheet" about data science](https://www.datasciencecentral.com/profiles/blogs/new-data-science-cheat-sheet), which is inspired by William Chen's [The Only Probability Cheatsheet You'll Ever Need](https://www.datasciencecentral.com/profiles/blogs/probability-cheat-sheet).
8. An extremely useful idea is that of splitting continuous predictors into thirds, rather than dichotomizing, [as described here](http://www.stat.columbia.edu/~gelman/research/published/thirds5.pdf). If you must categorize, think about the gains in efficiency this approach can provide.
9. From Darren Dahly, [here is a simulation to demonstrate how you should decide which covariates to adjust for in the context of a randomized controlled trial.](https://threadreaderapp.com/thread/1115902270888128514.html). There's an excellent follow-up series of posts, [from Frank Harrell and others at this link](https://twitter.com/f2harrell/status/1116311832652910597).

### What I'm Rehearsing (Performances continue through May 18)

I am appearing as Miles Gloriosus in **A Funny Thing Happened on the Way to the Forum** at Aurora Community Theatre, beginning April 26 for ten performances at 8 PM Fridays and Saturdays through May 18, and also 3 PM Sundays May 5 and 12. I believe that *Forum* has a strong case to be considered the funniest musical ever written. Come see me sing, dance, strut, preen, boast, brag and behave foolishly, with an excellent cast, crew and band.

Please feel no obligation to attend a show I'm in. Attending (or not attending) a show I'm in carries **no** weight with me at all in any professional capacity.

For more information, visit https://github.com/THOMASELOVE/theater/
