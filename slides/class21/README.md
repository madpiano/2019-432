# 432 Spring 2019 Class 21: 2019-04-16

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class21/432_2019_slides21.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class21/432_2019_slides21.Rmd).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Today's Topics

1. Minard's Map - A Graphic Memorial - see [linked images below]. 
2. One more survival analysis example.
3. A new topic: Fitting and interpreting robust linear regression models.

## There IS a minute paper after today's class.

Details to come.

## Upcoming Deliverables

1. [Homework 6](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework6) due at 2 PM on Monday 2019-04-22. Submit via [Canvas](https://canvas.case.edu/).
    - In Questions 1-2, you will need to build and describe a visualization using real data. Two good potential sources of data for this work are [FiveThirtyEight's data repository](https://data.fivethirtyeight.com/), and the [Tidy Tuesday repository](https://github.com/rfordatascience/tidytuesday). Health Policy Institute of Ohio has [just released its 2019 Health Value Dashboard](https://www.healthpolicyohio.org/2019-health-value-dashboard/), which has some available data that *might* be appropriate.
    - From Stephen Turner, [a nice tweet](https://twitter.com/strnr/status/787292116607234048) which contains some deep wisdom about how to deal with the task of building a professional visualization in our Homework 6. If at first, you don't succeed, don't be disappointed.
2. Quiz 2 will be made available to you by 5 PM on 2019-04-25. It is due at 2 PM on 2019-05-02.
3. Your project presentation will be on 04-29, 04-30, 05-02, or 05-07. The [schedule is here](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-schedule.md)
4. Your project portfolio is due on 2019-05-07 at 2 PM, regardless of when your presentation is scheduled.

## Minard's Map: A Graphical Memorial

Here are two reproductions of Charles Joseph Minard's map of Napoleon's disastrous losses suffered during the Russian campaign of 1812.

### A Large Version of the Original

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class21/figures/Minard_large.png)

### A More "Modern" Presentation

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class21/figures/modern-minard.png)

## Five Potentially Useful Resources

1. Amy Courtney started [a Twitter stream](https://twitter.com/AmyCourtney92/status/1100663931192963072) which contains some useful resources on data visualization.
    - Included is [this ggplot flipbook by Gina Reynolds](https://evamaerey.github.io/ggplot_flipbook/ggplot_flipbook_xaringan.html#1) which incrementally generates a plot to show the effect of each line of code.
    - Also included is [this tool from color brewer](http://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3) to help advise you on good color choices for building maps.
2. Here are some ideas on [exhaustive model selection for a coxph model](http://rpubs.com/kaz_yos/exhaustive).
3. Here's the [tidyroc package](https://github.com/dariyasydykova/tidyroc) (still under development by Dariya Sydykova) for calculating and plotting AUC/ROC plots in the context of the tidyverse.
4. If you are interested in learning more about electronic health records data, Dr. Sherri Rose gave a talk recently at Johns Hopkins about crucial considerations when leveraging electronic data for health and social policy. Understanding the context of the data collection & the implications of algorithm use in practice are critical. [Here's the link to her slides](https://t.co/swl8XRx5ES), and [her tweet](https://twitter.com/sherrirose/status/1100170486242258944).
5. Today, we'll discuss some well-established tools for robust linear regression. I've recently become aware of [the `estimatr` package](https://github.com/DeclareDesign/estimatr) which provides some nice solutions to common problems doing this sort of work. Here's a vignette on "[Getting Started Using estimatr](https://declaredesign.org/r/estimatr/articles/getting-started.html)".

## Is there anything specific you want to see in Project 2? 

Sure. There are about a dozen things. I want to see...

1. a clear statement of one or two research questions, preceded by an appropriate (but not at all lengthy) background section motivating those questions.
2. a clear description of the data to be used, with careful attention to cleaning the data to make the follow-up analyses as straightforward as possible.
3. the use of techniques from the 431-432 sequence for every stage of the data science process, from data ingest and tidying through the cycle of transformation, visualization and modeling, and then finally a careful communication of the end result.
4. the use of regression methods (which can include OLS, logistic models, and the more recently discussed methods for count, multi-categorical and (soon) survival outcomes) that are directly applicable to the research questions you posed at the start
5. the use of appropriate tools for diagnosing the quality of those models, including visualizations and summary statistics
6. identification and comparison of candidate models to address your research question(s) if there are real choices to be made (if you have a clear model in mind at the start, there's no need to use "best subsets" or something just to artificially create a competitor)
7. validation of your models in an appropriate way if prediction is relevant to your research question(s), as I expect it will be
8. clear evidence that you have thought hard, and well, about what pieces of output, specifically, think in terms of creating meaningful annotations for every single scrap of output that you generate and present: if you cannot think of anything to say about a piece of output easily, why are you including it?
9. a clear re-statement of the research questions you asked at the start, now with conclusions that answer those questions
10. a clear statement of the limitations of your approach, and
11. a clear statement about useful next steps that you would like to try on the data, moving forward
12. an extremely well-organized presentation of the portfolio, well-labeled, with good headings used throughout and making good use of the technology to create a table of contents that helps guide us to specific elements of your work quickly.

## Using our more complex modeling structures (and Homework 5)

The [Answer Sketch and Rubric for Homework 5](https://github.com/THOMASELOVE/2019-432/blob/master/homework/homework5/hw05_sketch/432_2019_hw5_sketch.pdf) is now available.

You may be aware that `polr` and several of the other modeling pieces we've worked on recently are finicky, at least in comparison to OLS. Sometimes, you'll get to the point where it seems like the model won't run, or won't summarize properly, or you have some extremely large or extremely small coefficient estimates or standard errors. Should this happen to you, the first thing I would do is try to identify which of your predictors is causing this problem, by running the model first with one predictor, then two, etc. until you figure out which predictors cause problems. Reasons why you could be having a problem include:

1. a predictor has values that completely identify the category of your outcome variable, perfectly (e.g., one category's predictor values are inevitably lower than all of another category's predictor values, with no overlap)
2. the scales of the predictors are wildly different, for instance one predictor has extremely large or extremely small values, causing the estimated standard errors to explode, which should cause you to think about reducing the impact of that, perhaps by changing the units, say from $s to $1000s or by standardizing the predictors
3. intense collinearity between two or more of your predictors
4. coding issues in setting up one or more of the variables.

For example, some people tried to use `median_income` in their models in Homework 5 along with other variables that have much smaller scales (ranges). I would try rescaling those variables with large ranges to have similar magnitudes to the other predictors, perhaps simply by expressing the median income in thousands of dollars (by dividing the raw data by 1000) rather than on its original scale, or perhaps by standardizing all of the coefficients.

As another example, some people tried using age-adjusted mortality to predict years lost rate, but if you divide the years lost rate into several ordinal categories, it's not hard to wind up in a situation where age-adjusted mortality is perfectly separated, so that if you know the mortality, it automatically specifies the years lost rate category in these data.

## What We'll Discuss Next Time

Details to come.

## Outside Interests: What I'm Rehearsing (Performances April 26 through May 18)

I am appearing as Miles Gloriosus in **A Funny Thing Happened on the Way to the Forum** at Aurora Community Theatre, beginning April 26 for ten performances at 8 PM Fridays and Saturdays through May 18, and also 3 PM Sundays May 5 and 12. I believe that *Forum* has a strong case to be considered the funniest musical ever written. Come see me sing, dance, strut, preen, boast, brag and behave foolishly, with an excellent cast, crew and band.

Aurora Community Theatre is located at 115 E. Pioneer Trail, near the intersection of SR 43 and 306, at the gazebo, in the center of Aurora, Ohio. Tickets for all shows are available online anytime, including seat selection, at https://auroracommunitytheatre.com/ or by calling 330-562-1818.

### If I'm a student/friend/neighbor/colleague of yours, are you expecting me to come see you in theater?

I'm always delighted to see anyone I know at any show I do. Please do come if you are interested. 

I also have various professional roles (as a teacher, for example) where I have some nominal control over other people's happiness or work. If you're someone who interacts with me professionally, please feel no obligation to attend a show I'm in. Attending (or not attending) a show I'm in carries **no** weight with me at all in any professional capacity.

For more information, visit https://github.com/THOMASELOVE/theater/. Thank you.

