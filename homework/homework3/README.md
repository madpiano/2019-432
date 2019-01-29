432 Homework 3
================

General Instructions
====================

Deadline: 2019-02-22 at 2 PM. Submit via [Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document that is the result of applying your R Markdown file to the `hbp330.csv` data, available in the data subfolder for this homework, as well as on our Data and Code page.

Start a separate R Project for Homework 3, as your first step, and place the data in that project's directory or (perhaps better) in a data sub-directory.

Question 1 (20 points)
======================

Again, consider the `hbp330` data used in Homeworks 1 and 2. Build your best model for the prediction of body-mass index, considering the following 14 predictors: `practice`, `age`, `race`, `eth_hisp`, `sex`, `insurance`, `income`, `hsgrad`, `tobacco`, `depdiag`, `sbp`, `dbp`, `statin` and `bpmed`. Use an appropriate best subsets procedure to aid in your search, and use a cross-validation strategy to assess and compare potential models.

-   Feel free to omit the cases with missing values in the variables you are considering (these 14 predictors, plus the `bmi` outcome) before proceeding. This should not materially affect your sample size very much. In the answer sketch, we will use a complete cases analysis.
-   Use the `nvmax = 7` command within your call to `regsubsets` to limit your investigation to models containing no more than seven of these candidate predictors.
-   Do not transform any variables, and consider models with main effects only so that no product terms are used.
-   A 5-fold cross-validation strategy would be very appropriate. Another reasonable choice would involve partitioning the data once (prior to fitting any models) into training and test samples, as we did in 431.

Be sure to provide a written explanation of your conclusions and specify the variables in your final model, in complete sentences.

Question 2 (10 points)
======================

Refer to the modeling task you accomplished in Question 1. Now, your job is to fit a Spearman rho-squared plot to identify the candidate variables (out of the 14 you studied) on which you might most reasonably try to address non-linearity in a model predicting body-mass index, now making use of as much of the data set that missing data allow (without imputation).

Show the plot, and provide a written explanation of your conclusions about it, and specify the variables that are most appealing for non-linear augmentations, all in complete sentences. Which variables are most appealing candidates to add non-linear evaluations to a linear fit to the complete set of 14 predictors, and why?

Note that you do not need to perform any analyses of potential models here, simply build and interpret a single plot.

Question 3 (20 points)
======================

-   First, in 2-4 complete English sentences, please specify, using your own words and complete English sentences, the most useful and relevant piece of advice you took away from reading Jeff Leek's *How To Be A Modern Scientist*.
    -   Please provide a reference to the section of the book that provides this good advice.
-   Second, in an essay of 4-8 additional sentences, describe why this particular piece of advice was meaningful or useful for you, personally, and how it will affect the way you move forward.
    -   You are strongly encouraged to provide a specific example of a past or current scientific experience of yours that would have been (or is being) helped by this new approach or idea.
    -   After reading your work, we want to be able to easily specify what this idea is, and why it is important and worth sharing.

Please add the session information.
-----------------------------------

Finally, at the end of this homework and all subsequent assignments (including the projects), please add the session information. My preferred way for you to do this is:

``` r
sessioninfo::session_info()
```

which will produce something like this:

``` r
sessioninfo::session_info()
```

    ## - Session info ----------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.5.2 (2018-12-20)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/New_York            
    ##  date     2019-01-28                  
    ## 
    ## - Packages --------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.0   2017-04-11 [1] CRAN (R 3.5.0)
    ##  cli           1.0.1   2018-09-25 [1] CRAN (R 3.5.1)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.5.0)
    ##  digest        0.6.18  2018-10-10 [1] CRAN (R 3.5.1)
    ##  evaluate      0.12    2018-10-09 [1] CRAN (R 3.5.1)
    ##  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.5.0)
    ##  knitr         1.21    2018-12-10 [1] CRAN (R 3.5.2)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.5.2)
    ##  Rcpp          1.0.0   2018-11-07 [1] CRAN (R 3.5.1)
    ##  rmarkdown     1.11    2018-12-08 [1] CRAN (R 3.5.2)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.5.1)
    ##  stringi       1.2.4   2018-07-20 [1] CRAN (R 3.5.1)
    ##  stringr       1.3.1   2018-05-10 [1] CRAN (R 3.5.0)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.5.0)
    ##  xfun          0.4     2018-10-23 [1] CRAN (R 3.5.1)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.5.1)
    ## 
    ## [1] C:/Users/Thomas/Documents/R/win-library/3.5
    ## [2] C:/Program Files/R/R-3.5.2/library
