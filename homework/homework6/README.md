432 Homework 6
================
Last Updated: 2019-03-18

# General Instructions

Deadline: **Monday** 2019-04-22 at 2 PM. Submit via
[Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document
that is the result of applying your R Markdown file.

Start a separate R Project for Homework 6, as your first step. There are
two data files involved in this assignment, called `umaru.csv` and
`remission.csv`. Each is available on our github site with the other
homework 6 materials.

Note that Homework 6 is worth a total of 100 points. We will scale this
assignment so that it takes a more similar weight to the other
assignments.

# Question 1 (15 points)

Create a visualization (using R) of real data on a subject that is
meaningful to you, and share it (the visualization (and the code you
used to build it) with us. The visualization should be of a professional
quality, include proper labels and a title, as well as a caption of no
more than 50 words that highlights the key result. If you decide to
create a new visualization based on a revision of someone else’s work,
you must share with us that original work, as well.

We will grade Question 1 strictly based on the quality of the
visualization, its title and caption, in terms of being attractive,
well-labeled and useful for representing the data, and how well it
adheres to general principles for good visualizations we’ve seen in 431
and 432.

# Question 2 (20 points)

Write an essay (between 150 and 300 words) describing the background,
creation and meaning of the visualization you created in Question 1,
providing us with the context we need to understand why this is a
meaningful, and perhaps important visualization. In your short
description, address each of the following issues.

  - How does this visualization help its audience understand the world
    better?
  - Why is this particular visualization effective, and what are the
    design features it uses that we can learn from to help us make more
    effective visualizations?
  - How is this visualization coded in R? What tools did you use, and
    why did you select them?

# Setup for Questions 3-5

The `umaru.csv` data file contains information for 575 subjects selected
from the UMARU IMPACT study collaborative project done by the University
of Massachusetts AIDS Research Unit over 5 years (1989-1994). Various
versions of this data set are frequently used in survival analysis
texts. I’ve tweaked your data set enough that you’ll see some different
results. The study included two concurrent randomized trials of
residential treatment for drug abuse. The key question is to compare
treatment programs of different planned durations in terms of their
ability to reduce drug abuse and prevent high-risk HIV behavior. Here’s
a
codebook:

|  Variable | Description                                                                                                                                            |
| --------: | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `subject` | Subject ID \#, ranging from 1001 - 1575                                                                                                                |
|     `age` | age at enrollment, in years                                                                                                                            |
|    `beck` | Beck Depression Score at admission                                                                                                                     |
|  `hercoc` | heroin or cocaine use during the 3 months prior to admission (1 = Heroin & Cocaine, 2 = Heroin only, 3 = Cocaine only, 4 = Neither Heroin nor Cocaine) |
|    `ivhx` | IV drug use history at admission (1 = never, 2 = previous but not recent, 3 = recent)                                                                  |
| `ndrugtx` | \# of prior drug treatments                                                                                                                            |
|    `race` | subject’s race (0 = white, 1 = other)                                                                                                                  |
|   `treat` | treatment randomization assignment (Long, or Short)                                                                                                    |
|    `site` | treatment site (A or B)                                                                                                                                |
|     `lot` | Length of Treatment (Exit Date - Admission Date), in days                                                                                              |
|    `time` | Time to Return to Drug Use (measured from Admission Date), in days                                                                                     |
|  `censor` | Returned to Drug Use indicator (1 = returned to drug use, 0 = otherwise)                                                                               |

# Question 3 (15 points)

Build a Cox model, using `treat` as a predictor, and spending degrees of
freedom in any way you like with the rest of the available predictors
(i.e. *everything but* `subject`, `lot`, `time` and `censor`) in the
data set, so long as you do not exceed a total of 12 degrees of freedom,
predicting the time to return to drug use. You’ll probably want to use a
Spearman rho-squared plot to make your selection, in which case you
should stick with the model you develop using that tool, regardless of
its eventual performance. Specify your model carefully, and interpret
the hazard ratio for `treat` implied by your new model.

**Hint** When you build the Spearman rho-squared plot, use `time` but
not the entire survival object as the “outcome.”

# Question 4 (10 points)

Apply a Cox regression model to predict the time to return to drug use
(incorporating censoring appropriately) using the information in
`treat`, plus main effects of `age`, `beck`, `site`, `ivhx` and
`ndrugtx`. Interpret the meaning of the hazard ratio for `treat`, after
adjusting for the other five predictors.

# Question 5 (20 points)

Compare the two models you have fit in Questions 3 and 4, specifying
which one you prefer and why. Be sure to include both a comparison of
the quality of fit from each model (be sure to at least two ways to
assess that quality of fit), and an assessment of adherence to the
assumptions of a proportional hazards model for your final selection.
Validate the summary statistics describing your chosen model, and
explain what those results mean, too.

# Question 6 (20 points)

The `remission.csv` file contains contains initial remission times, in
days, for 44 leukemia patients who were randomly allocated to two
different treatments, labeled A and B. Some patients were right-censored
before their remission times could be fully determined, as indicated by
values of `censored` = 1 in the data set. Note that remission is a good
thing, so long times before remission are bad.

Your task is to plot and compare appropriate estimates of the survival
functions for the two treatments, including at least a Kaplan-Meier
estimate and a log rank test. Compare median and (restricted) mean
survival times appropriately. Write a complete sentence (or several) to
accompany each of your estimates and plots. Do not use a regression
model.

## Please add the session information.

Finally, at the end of this homework and all subsequent assignments
(including the projects), please add the session information. My
preferred way for you to do this is:

``` r
sessioninfo::session_info()
```

which will produce something like
    this:

``` r
sessioninfo::session_info()
```

    ## - Session info ----------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.5.3 (2019-03-11)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/New_York            
    ##  date     2019-03-18                  
    ## 
    ## - Packages --------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.0   2017-04-11 [1] CRAN (R 3.5.0)
    ##  cli           1.0.1   2018-09-25 [1] CRAN (R 3.5.1)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.5.0)
    ##  digest        0.6.18  2018-10-10 [1] CRAN (R 3.5.1)
    ##  evaluate      0.13    2019-02-12 [1] CRAN (R 3.5.3)
    ##  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.5.0)
    ##  knitr         1.22    2019-03-08 [1] CRAN (R 3.5.3)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.5.2)
    ##  Rcpp          1.0.0   2018-11-07 [1] CRAN (R 3.5.1)
    ##  rmarkdown     1.12    2019-03-14 [1] CRAN (R 3.5.3)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.5.1)
    ##  stringi       1.4.3   2019-03-12 [1] CRAN (R 3.5.3)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 3.5.3)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.5.0)
    ##  xfun          0.5     2019-02-20 [1] CRAN (R 3.5.3)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.5.1)
    ## 
    ## [1] C:/Users/Thomas/Documents/R/win-library/3.5
    ## [2] C:/Program Files/R/R-3.5.3/library
