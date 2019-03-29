# 432 Spring 2019 Class 17: 2019-04-02

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/432_2019_slides17.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/432_2019_slides17.Rmd). 
    - The slides discuss regression models for ordinal categorical outcomes. See [Chapter 19 of the Notes](https://thomaselove.github.io/2019-432-book/modeling-an-ordinal-categorical-outcome-in-ohio-smart.html).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. [Project 2 Registration and Scheduling Form](http://bit.ly/432-2019-project2-registration) due at **9 AM** on Monday 2019-04-08.
2. [Homework 5](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5) due at 2 PM on Friday 2019-04-12. Submit via [Canvas](https://canvas.case.edu/).

## Grades

1. [Homework 4](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework4) grades will be posted soon.
    - You'll find a half-dozen of the stronger [2019 visualizations for Question 1 here](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/2019_nice_viz.pdf).
2. [Quiz 1 Honors Opportunity](https://github.com/THOMASELOVE/2019-432/blob/master/quizzes/quiz1_honors/README.md) grades will be posted for the revision as soon as possible to [Canvas](https://canvas.case.edu/).
    - If you scored 4 or higher, you'll receive the extra points on your Quiz 1 score.

## Other News

1. The [Course Notes](https://thomaselove.github.io/2019-432-book/) have been updated to fix a typo in Section 15.11.1.
2. We talked about hanging **rootograms** last time as a means of understanding the fit of count outcome models, like Poisson or Negative Binomial regressions. If you want some more information, a key paper is Kleiber C Zeileis A "[Visualizing Count Data Regressions Using Rootograms](https://arxiv.org/pdf/1605.01311)".
3. You might be interested in these [R Studio Shortcuts and Tips](https://appsilon.com/r-studio-shortcuts-and-tips/).
4. Alison Hill gave a very interesting talk at the R Studio 2019 conference on [Making Slides for HTML with R Markdown](https://arm.rbind.io/slides/xaringan.html). There's a lot to unpack, but these are impressive tools.

## Improving/Augmenting Your Visualizations

Visualizing data can be extremely difficult. Even *The Economist* has an interesting history in this regard, as Sarah Leo writes in [Mistakes, we've drawn a few](https://medium.economist.com/mistakes-weve-drawn-a-few-8cdd8a42d368?gi=79a4498d7670). 

1. If you want to arrange plots into a grid in a more nuanced way than `gridExtra::grid.arrange()` provides, you probably should consider `cowplot`. The [introductory vignette is here](https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html), and the [`plot_grid` function vignette is here](https://cran.r-project.org/web/packages/cowplot/vignettes/plot_grid.html). The [github site for cowplot is here](https://github.com/wilkelab/cowplot).
2. If you're looking for ways to improve the themes used in your ggplots, or perhaps to use a specific font or color scheme, you might want to look over [these examples in the hrbrthemes package](https://github.com/hrbrmstr/hrbrthemes).
3. Another interesting idea is highlighting specific values / paths within a plot, and the [gghighlight vignette](https://cran.r-project.org/web/packages/gghighlight/vignettes/gghighlight.html) may be of some interest. This was presented at the R Studio Conference 2019: [more details are here](https://yutani.rbind.io/post/2018-06-03-anatomy-of-gghighlight/).
4. Tables are a kind of visualization, too, of course, and [the gt package](https://github.com/rstudio/gt) can be a big help in trying to build information-dense and attractive tables.

Of course, if you really do a good job, it's always possible you'll be rewarded [with a parade](https://twitter.com/DapperHistorian/status/1111007778469040133)!

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/parade.png)

## Next Journal Club Session is Thursday April 4

- Wood WG82-C at 2:30 PM
- Come to discuss [Moving to a World Beyond p < 0.05](https://tandfonline.com/doi/pdf/10.1080/00031305.2019.1583913?needAccess=true)
    - We'll discuss some related materials in Classes 22 and 23.
    - Roger Peng and Hilary Parker discuss the significance of statistical significance in their [2019-03-28 Not So Standard Deviations podcast](http://nssdeviations.com/77-back-to-statistics).

## Logistic Regression Fitting and Making Predictions with Multiple Imputation

- Some frequently asked questions are addressed in this document ([in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/logistic_regression_loose_ends.pdf), or [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class17/logistic_regression_loose_ends.Rmd), or [in HTML at RPubs](http://rpubs.com/TELOVE/logistic-and-multiple-imp-faq)) that I prepared on 2019-03-29. In particular, this covers:
    1. Can we estimate odds ratios (and confidence intervals for those CIs) using `lrm` for a one-unit change in a quantitative predictor, along with the default (25th percentile, 75th percentile) comparison?
    2. How can we make predictions effectively after multiple imputation?
    3. When should we include knots as part of `fit.mult.impute`?

## Questions I still intend to answer soon

1. What happens when we use a linear regression model on a binary outcome - the so-called *linear probability model* - how does the compare to logistic regression and probit regression?
2. How do we build the maps shown in our Class 15 README? 
