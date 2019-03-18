432 Generic Example: Developing an Effect Size Rubric
================
2019-03-19

# Introduction

We’re going to discuss this further on Thursday, but I want to get you
started thinking about this.

The generic problem is that we have built a pair of models, using the
data in the `generic.csv` file available above.

  - Model 1 is a linear regression, fit to describe a quantitative
    outcome called `OUT1`.
  - Model 2 is a logistic regression, fit to describe a binary (1 or 0)
    outcome called `OUT2`
  - To do this, each model uses three predictors of interest, called
    `BIN`, `QUANT` and `MULT`
      - `BIN` is a binary predictor that takes the values 1 or 0.
      - `QUANT` is a quantitative predictor that takes values anywhere
        within a range of numbers
      - `MULT` is a four-category predictor, and the model uses as the
        baseline category A, while the other categories are called B, C,
        and D.
  - We have the following output:

<!-- end list -->

``` r
library(broom); library(tidyverse)
```

``` r
gen1 <- read_csv("data/generic.csv")
```

    Parsed with column specification:
    cols(
      subj_id = col_character(),
      BIN = col_double(),
      QUANT = col_double(),
      MULT = col_character(),
      OUT1 = col_double(),
      OUT2 = col_double()
    )

# Model 1

``` r
m1 <- lm(OUT1 ~ BIN + QUANT + MULT, data = gen1)

tidy(m1, conf.int = TRUE, conf.level = 0.95) %>%
    knitr::kable(digits = 3)
```

| term        | estimate | std.error | statistic | p.value | conf.low | conf.high |
| :---------- | -------: | --------: | --------: | ------: | -------: | --------: |
| (Intercept) |   11.960 |     3.537 |     3.381 |   0.001 |    5.010 |    18.910 |
| BIN         |    9.019 |     2.206 |     4.088 |   0.000 |    4.684 |    13.354 |
| QUANT       |    0.041 |     0.027 |     1.493 |   0.136 |  \-0.013 |     0.095 |
| MULTB       |    2.212 |     3.033 |     0.729 |   0.466 |  \-3.747 |     8.171 |
| MULTC       |    4.005 |     2.938 |     1.363 |   0.173 |  \-1.767 |     9.777 |
| MULTD       |   11.118 |     3.845 |     2.892 |   0.004 |    3.564 |    18.671 |

``` r
anova(m1)
```

    Analysis of Variance Table
    
    Response: OUT1
               Df Sum Sq Mean Sq F value    Pr(>F)    
    BIN         1  10652 10651.5 18.8709 1.698e-05 ***
    QUANT       1   1431  1430.5  2.5345   0.11203    
    MULT        3   5155  1718.2  3.0441   0.02853 *  
    Residuals 494 278834   564.4                      
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Model 2

``` r
m2 <- glm(OUT2 == "1" ~ BIN + QUANT + MULT, 
          family = binomial(), data = gen1)

tidy(m2, exponentiate = TRUE, conf.int = TRUE, 
     conf.level = 0.95) %>%
    knitr::kable(digits = 3)
```

| term        | estimate | std.error | statistic | p.value | conf.low | conf.high |
| :---------- | -------: | --------: | --------: | ------: | -------: | --------: |
| (Intercept) |    0.453 |     0.316 |   \-2.505 |   0.012 |    0.242 |     0.836 |
| BIN         |    1.454 |     0.194 |     1.931 |   0.053 |    0.994 |     2.127 |
| QUANT       |    1.001 |     0.002 |     0.548 |   0.584 |    0.997 |     1.006 |
| MULTB       |    0.696 |     0.276 |   \-1.312 |   0.190 |    0.400 |     1.184 |
| MULTC       |    0.820 |     0.261 |   \-0.761 |   0.447 |    0.487 |     1.358 |
| MULTD       |    0.676 |     0.354 |   \-1.108 |   0.268 |    0.328 |     1.325 |

``` r
anova(m2, test = "LRT")
```

    Analysis of Deviance Table
    
    Model: binomial, link: logit
    
    Response: OUT2 == "1"
    
    Terms added sequentially (first to last)
    
          Df Deviance Resid. Df Resid. Dev Pr(>Chi)  
    NULL                    499     648.68           
    BIN    1   3.3237       498     645.35  0.06829 .
    QUANT  1   0.3611       497     644.99  0.54787  
    MULT   3   2.7522       494     642.24  0.43143  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Initial Questions we’d like to answer

1.  How can we best describe the effect of `BIN` on `OUT1` in Model 1?
2.  How does this answer change if we instead look at the effect of
    `BIN` on `OUT2` in Model 2?
3.  How do your answers to 1 and 2 change if we instead look at the
    effect of `QUANT` on the outcomes in these two models?
4.  How do your answers to 1 and 2 change if we instead look at the
    effect of `MULT` on the outcomes in these two models?

# What we’ll be thinking about together initially

  - How can I, when under pressure, run through a list of things to
    consider when answering questions like 1-4 so I address everything
    that is important?
  - Can we build such a list, together, that would satisfy a
    statistician?
  - What can I learn from looking at how people do this in my field? How
    would I find out what people in my field do?

# The Next Set of Questions

When we’re satisfied that we’ve made good progress on the items above,
we’ll add these questions…

5.  How do my answers change if I developed new models that included
    interaction effects?
6.  How do my answers change if I developed new models that included
    polynomial terms?
7.  How do my answers change if I developed new models that included
    restricted cubic splines?
8.  How do my answers regarding model 1 change if I transform OUT1 to
    get something that’s a better fit with a Normal model?
9.  Does the *purpose* of the model change the answers to questions 1-7?
10. What if I fit a model that isn’t a linear regression or logistic
    regression, but instead some other regression?

# Our Next Discussion Steps

  - What more do I need to know when confronted with the additional
    issues that arise in light of new models as in questions 5-8?
  - How does the purpose of the model play a role?
  - How do we extend these ideas to probit models, models for count
    outcomes, models for multi-categorical outcomes, and models for
    time-to-event data?
