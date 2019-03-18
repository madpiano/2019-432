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
| (Intercept) |   12.925 |     3.569 |     3.621 |   0.000 |    5.912 |    19.938 |
| BIN         |    9.269 |     2.222 |     4.171 |   0.000 |    4.903 |    13.636 |
| QUANT       |    0.043 |     0.028 |     1.553 |   0.121 |  \-0.011 |     0.097 |
| MULTB       |    0.921 |     3.052 |     0.302 |   0.763 |  \-5.075 |     6.917 |
| MULTC       |    1.117 |     2.981 |     0.375 |   0.708 |  \-4.741 |     6.974 |
| MULTD       |    4.657 |     3.949 |     1.179 |   0.239 |  \-3.101 |    12.415 |

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
| (Intercept) |    0.498 |     0.315 |   \-2.213 |   0.027 |    0.266 |     0.917 |
| BIN         |    1.221 |     0.195 |     1.026 |   0.305 |    0.833 |     1.787 |
| QUANT       |    1.000 |     0.002 |     0.152 |   0.879 |    0.996 |     1.005 |
| MULTB       |    0.767 |     0.275 |   \-0.965 |   0.335 |    0.441 |     1.302 |
| MULTC       |    0.944 |     0.261 |   \-0.220 |   0.826 |    0.561 |     1.566 |
| MULTD       |    0.800 |     0.356 |   \-0.627 |   0.531 |    0.387 |     1.577 |

# Initial Questions we’d like to answer

1.  How can we best describe the effect of `BIN` on `OUT1` in Model 1?
2.  How does this answer change if we instead look at the effect of
    `BIN` on `OUT2` in Model 2?
3.  How do your answers to 1 and 2 change if we instead look at the
    effect of `QUANT` on the outcomes in these two models?
4.  How do your answers to 1 and 2 change if we instead look at the
    effect of `MULT` on the outcomes in these two models?

# What we’ll be thinking about together initially

  - How can I, when under pressure, go through a list of things to
    consider when answering questions like 1-4?
  - Can we build such a list, together?

# The Next Set of Questions

When we’re satisfied that we’ve made good progress on the items above,
we’ll add these questions…

5.  How do my answers change if I developed new models that included
    interaction effects?
6.  How do my answers change if I developed new models that included
    polynomial terms?
7.  How do my answers change if I developed new models that included
    restricted cubic splines?
8.  Does the *purpose* of the model change the answers to questions 1-7?
9.  What if I fit a model that isn’t a linear regression or logistic
    regression, but instead some other regression?

# Our Next Discussion Steps

  - What more do I need to know when confronted with the additional
    issues that arise in light of new models as in questions 5-7?
  - How does the purpose of the model play a role?
  - How do we extend these ideas to probit models, models for count
    outcomes, models for multi-categorical outcomes, and models for
    time-to-event data?
