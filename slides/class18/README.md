# 432 Spring 2019 Class 18: 2019-04-04

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class18/432_2019_slides18.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class18/432_2019_slides18.Rmd).
    - The slides discuss regression models for nominal categorical outcomes. See [Chapter 20 of the Notes](https://thomaselove.github.io/2019-432-book/analyzing-literary-styles-with-multinomial-logistic-regression.html).
    - We'll actually begin today's session with Slides 41-55 from the [Class 17 Slides, reposted above](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class18/432_2019_slides17.pdf). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. [Project 2 Registration and Scheduling Form](http://bit.ly/432-2019-project2-registration) due at **9 AM** on Monday 2019-04-08.
2. [Homework 5](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5) due at 2 PM on Friday 2019-04-12. Submit via [Canvas](https://canvas.case.edu/).

## Dr. Love's Availability

After I post the audio recording for class later today, I will be away from email until mid-day Monday. The TAs will attend to 431-help in my absence. Good luck with the project 2 registration.

## Minute Paper Feedback is at http://bit.ly/432-2019-minute17-results.

## General Announcements / Tips

1. [Zev Ross](https://twitter.com/zevross/status/1113068644895002626?s=11) provides a [blog post which may help in creating multi-panel plots with ggplot2](https://t.co/I5PJh6kAKy). The post includes discussions and demonstrations (using data from when Marvel characters debuted in the comics) comparing facet_wrap vs. facet_grid, and describing the use of such things as drop, dir, and switch to improve faceted plots.

2. [Malin Axelsson](https://twitter.com/malinfax/status/1056660281168986113) made a document containing free resources for learning R and statistics for her research group [and shared it at this link](https://t.co/JutzTPyfbi).
    - One of my personal favorites is "[One Dataset, Visualized 25 Ways](https://flowingdata.com/2017/01/24/one-dataset-visualized-25-ways/)" by Nathan Yau at [FlowingData](https://flowingdata.com).

3. A new version of the `caret` package (Classification and Regression Training) for feature selection and creation of predictive models has been released to CRAN, and I fully expect to use this package more in 2019-20 than I do now. [Here's a description of the big tools](https://topepo.github.io/caret/) for data splitting, pre-processing, feature selection, model tuning using resampling and variable importance estimation.

4. You might be interested in the [2019 Computational and Data Science Fellowships](https://www.sighpc.org/fellowships) sponsored by ACM and SIGHPC/Intel. Specifically targeted at women or students from racial/ethnic backgrounds that have not traditionally participated in the computing field, the program is open to students pursuing degrees at institutions anywhere in the world. 

5. You may be wondering why I've focused so completely on regression modeling for the outcomes you generate in your projects. Well, part of it is that [most common statistical tests are actually linear models](https://lindeloev.github.io/tests-as-linear/) as Jonas Kristoffer Lindeløv points out.

6. A nice function that I often forget about is `coalesce`. Here's a [quick indication of what it can do](https://twitter.com/tjmahr/status/1111324874092564481?s=11) from T.J. Mahr, and [here is a more detailed (and thoughtful) explanation](https://www.jessemaegan.com/post/learning-to-learn-metacognition-and-the-coalesce-function/).

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class18/mahr.png)

7. Those of you having trouble with `gather` and `spread` for making your data wider or longer may be excited to learn about the new functions coming to the `tidyverse` to help. Behold [pivoting](https://tidyr.tidyverse.org/dev/articles/pivot.html).

8. If you'd like to learn more about the theoretical foundations behind modeling binary outcomes, and in particular, the *linear probability model*, check out [this material from Introduction to Econometrics with R](https://www.econometrics-with-r.org/11-1-binary-dependent-variables-and-the-linear-probability-model.html) by Christoph Hanck, Martin Arnold, Alexander Gerber and Martin Schmelzer.
    - The linear probability model uses ordinary least squares regression to fit binary outcomes.
    - Such a model will have to use robust standard errors, since it will always fail the assumption of homoscedasticity.
    - The data can never be fit properly by the model, so R-squared has no meaningful interpretation.

9. Do you know about [Code Folding and Sections](https://support.rstudio.com/hc/en-us/articles/200484568-Code-Folding-and-Sections) in R Markdown?

10. How about [Keyboard Shortcuts](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts)? Some of these can be life-changing...

## Tweet of the Day, from Andrew Althouse

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class18/althouse.png)

Actually, [most of the whole thread](https://twitter.com/adalthousephd/status/1113027432804745216?s=11) is useful.

## On Communicating Effect Sizes

Check out [Language for communicating frequentist results about treatment effects](https://discourse.datamethods.org/t/language-for-communicating-frequentist-results-about-treatment-effects/934), an ongoing note from Frank Harrell and others...

- We'll discuss this further later in the term.
