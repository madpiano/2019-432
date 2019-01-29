432 Homework 2
================

General Instructions
====================

Deadline: 2019-02-08 at 2 PM. Submit via [Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document that is the result of applying your R Markdown file to the `hbp330.csv` data, available in the data subfolder for this homework, as well as on our Data and Code page.

Start a separate R Project for Homework 2, as your first step, and place the data in that project's directory or (perhaps better) in a data sub-directory.

Question 1. (20 points)
-----------------------

Consider the `hbp330` data used in Homework 1. Fit and interpret an ANOVA model to evaluate the effect of `race` on `income`. What conclusions can you draw? In developing an answer, please decide whether collapsing the `race` factor into a smaller number of levels would be sensible in this case. You'll also want to assess the role of missingness in this work, and consider removing the cases with missing values (or imputing them with simple imputation) if they include only a small fraction of the total sample. Be sure to provide a written explanation of your findings, in complete sentences.

Question 2. (15 points)
-----------------------

Now fit a two-factor ANOVA model to evaluate the effects of `race` (either collapsed or uncollapsed, as you decide) and `sex` on `income`. What can you conclude? Be sure to provide a written explanation of your findings, in complete sentences. Your answer for Question 2 is not complete unless you provide a plot that helps you decide whether an interaction term is useful.

Question 3. (15 points)
-----------------------

Now attempt to fit a two-factor ANOVA model to evaluate the effect of `race` and `insurance` on `income`. Note that a problem should occur when you fit this `race` and `insurance` model, that doesn't happen, for instance, when you evaluate the effects of both `race` and `sex` on `income`. So what happens when you fit the `race`-`insurance` model, exactly, and why does it happen? (Note that a plot regarding interaction may or may not be helpful, but is not needed in your response to Question 3.)

-   Here's a hint...

> R may well warn you about "singularities" in your output for Question 3, but we'd like a clearer answer than that from you. To obtain it, consider exploratory data analysis, specifically the value of counting things. In particular, ask yourself questions like "How many people fall into the levels of the product term I've created?" or "What if I build a table, say with race in the rows and insurance in the columns - how many people fall into each cell of that table?" as a way to figure out what the real problem is.

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
