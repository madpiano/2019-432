432 Homework 4
================

# General Instructions

Deadline: 2019-03-22 at 2 PM. Submit via
[Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document
that is the result of applying your R Markdown file to the
`oh_counties_2017.csv` data, available in the main directory for this
homework, as well as on our Data and Code page.

Start a separate R Project for Homework 4, as your first step, and place
the data in that project’s directory or (perhaps better) in a data
sub-directory.

## Data Set for this Assignment

The `oh_counties_2017.csv` data set I have provided describes a series
of variables, pulled from the data for the 88 counties of the the State
of Ohio from the [County Health
Rankings](http://www.countyhealthrankings.org/rankings/data/oh) report
for 2017.

  - You may also be interested in looking at the details of the [2017
    Ohio Summary report
    (pdf)](http://www.countyhealthrankings.org/sites/default/files/state/downloads/CHR2017_OH.pdf),
    or at the [Excel data
    file](http://www.countyhealthrankings.org/sites/default/files/state/downloads/2017%20County%20Health%20Rankings%20Ohio%20Data%20-%20v2.xls)
    from which I created the `oh_counties_2017.csv` file.
  - Note that the 2018 data and report were released recently, but we
    will concentrate in this assignment on the 2017 results.

The available variables are listed below. Each variable describes data
at the **COUNTY**
level.

|        Variable        | Description                                                                                                                        |
| :--------------------: | ---------------------------------------------------------------------------------------------------------------------------------- |
|          fips          | Federal Information Processing Standard code                                                                                       |
|         county         | name of County                                                                                                                     |
|   years\_lost\_rate    | age-adjusted years of potential life lost rate (per 100,000 population)                                                            |
|     sroh\_fairpoor     | % of adults reporting fair or poor health (via BRFSS)                                                                              |
|       phys\_days       | mean number of reported physically unhealthy days per month                                                                        |
|       ment\_days       | mean number of reported mentally unhealthy days per mo                                                                             |
|        lbw\_pct        | % of births with low birth weight (\< 2500 grams)                                                                                  |
|      smoker\_pct       | % of adults that report currently smoking                                                                                          |
|       obese\_pct       | % of adults that report body mass index of 30 or higher                                                                            |
|       food\_env        | indicator of access to healthy foods, in points (0 is worst, 10 is best)                                                           |
|     inactive\_pct      | % of adults that report no leisure-time physical activity                                                                          |
|      exer\_access      | % of the population with access to places for physical activity                                                                    |
|       exc\_drink       | % of adults that report excessive drinking                                                                                         |
|       alc\_drive       | % of driving deaths with alcohol involvement                                                                                       |
|       sti\_rate        | Chlamydia cases / Population x 100,000                                                                                             |
|      teen\_births      | Teen births / females ages 15-19 x 1,000                                                                                           |
|       uninsured        | % of people under age 65 without insurance                                                                                         |
|       pcp\_ratio       | Population to Primary Care Physicians ratio                                                                                        |
|       prev\_hosp       | Discharges for Ambulatory Care Sensitive Conditions/Medicare Enrollees x 1,000                                                     |
|        hsgrads         | High School graduation rate                                                                                                        |
|       unemployed       | % of population age 16+ who are unemployed and looking for work                                                                    |
|       poor\_kids       | % of children (under age 18) living in poverty                                                                                     |
|     income\_ratio      | Ratio of household income at the 80th percentile to income at the 20th percentile                                                  |
|      associations      | \# of social associations / population x 10,000                                                                                    |
|         pm2.5          | Average daily amount of fine particulate matter in micrograms per cubic meter                                                      |
|        h2oviol         | Presence of a water violation: Yes or No                                                                                           |
|      sev\_housing      | % of households with at least 1 of 4 housing problems: overcrowding, high housing costs, or lack of kitchen or plumbing facilities |
|      drive\_alone      | % of workers who drive alone to work                                                                                               |
|   age.adj.mortality    | premature age-adjusted mortality                                                                                                   |
|        dm\_prev        | % with a diabetes diagnosis                                                                                                        |
|  freq\_phys\_distress  | % in frequent physical distress                                                                                                    |
| freq\_mental\_distress | % in frequent mental distress                                                                                                      |
|     food\_insecure     | % who are food insecure                                                                                                            |
|     insuff\_sleep      | % who get insufficient sleep                                                                                                       |
|     health\_costs      | estimated mean health care costs                                                                                                   |
|     median\_income     | estimated median income                                                                                                            |
|       population       | population size                                                                                                                    |
|       age65plus        | % of population who are 65 and over                                                                                                |
|       african-am       | % of population who are African-American                                                                                           |
|        hispanic        | % of population who are of Hispanic/Latino ethnicity                                                                               |
|         white          | % of population who are White                                                                                                      |
|         female         | % of population who are Female                                                                                                     |
|         rural          | % of people in the county who live in rural areas                                                                                  |

# Question 1 (15 points)

Create a visualization (using R) based on some part of the
`oh_counties_2017.csv` data set, and share it (the visualization and the
R code you used to build it) with us. The visualization should be of a
professional quality, describe information from at least three different
variables listed above, include proper labels and a title, as well as a
caption of no more than 50 words that highlights the key result.
Although you may fit a model to help show patterns, your primary task is
to show **the data** in a meaningful way, rather than to simply
highlight the results of a model.

  - You are welcome to find useful tools for visualizing data in R that
    we have yet to see in the slides in class.
  - We will grade Question 1 strictly based on the quality of the
    visualization, its title and caption, in terms of being attractive,
    well-labeled and useful for representing the County Health Rankings
    data for Ohio, and how well it adheres to general principles for
    good visualizations we’ve seen in 431 and 432.

# Question 2 (15 points)

Write an essay (between 100 and 200 words) describing the creation and
meaning of the visualization you created in Question 1, providing us
with the context we need to understand why this is a useful
visualization. In your short description, be sure to address:

  - How does this visualization help its audience understand the data
    better?
  - Why is this particular visualization effective, and what are the
    design features it uses that we can learn from to help us make more
    effective visualizations?

# Question 3 (10 points)

Create a linear regression model to predict `obese_pct` as a function of
`food_env` adjusting for `median_income`, and treating all three
variables as quantitative, using all counties with complete data on
those three variables. Specify and then carefully interpret the
estimated coefficient of `food_env` and a 90% confidence interval around
that estimate in context using nothing but complete English sentences. A
model using main effects only, entered as linear predictors, will be
sufficient.

# Question 4 (10 points)

Create a logistic regression model to predict the presence of a water
violation (as contained in `h2oviol`) on the basis of `sev_housing` and
`pm2.5`. Specify and then carefully interpret the estimated coefficient
of `sev_housing` and a 90% confidence interval around that estimate in
context using nothing but complete English sentences. A model using main
effects only, entered as linear predictors, will be sufficient.

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
    ##  date     2019-03-15                  
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
