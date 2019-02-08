432 Homework 2 Answer Sketch
================
Due 2019-02-08. Version: 2019-02-08

## Setup and Data Ingest

``` r
library(skimr); library(broom)
library(janitor); library(tidyverse)
```

    -- Attaching packages ----------------------------------------------------------------------------------- tidyverse 1.2.1 --

    v ggplot2 3.1.0     v purrr   0.3.0
    v tibble  2.0.1     v dplyr   0.7.8
    v tidyr   0.8.2     v stringr 1.3.1
    v readr   1.3.1     v forcats 0.3.0

    -- Conflicts -------------------------------------------------------------------------------------- tidyverse_conflicts() --
    x dplyr::filter() masks stats::filter()
    x dplyr::lag()    masks stats::lag()

``` r
skim_with(numeric = list(hist = NULL), 
          integer = list(hist = NULL))

hbp330 <- read_csv("data/hbp330.csv") %>%
    clean_names()
```

    Parsed with column specification:
    cols(
      subject = col_character(),
      practice = col_character(),
      provider = col_character(),
      age = col_double(),
      race = col_character(),
      eth_hisp = col_character(),
      sex = col_character(),
      insurance = col_character(),
      income = col_double(),
      hsgrad = col_double(),
      tobacco = col_character(),
      depdiag = col_character(),
      height = col_double(),
      weight = col_double(),
      ldl = col_double(),
      statin = col_double(),
      bpmed = col_double(),
      sbp = col_double(),
      dbp = col_double()
    )

# Question 1. (20 points)

> Consider the `hbp330` data used in Homework 1. Fit and interpret an
> ANOVA model to evaluate the effect of `race` on `income`. What
> conclusions can you draw? In developing an answer, please decide
> whether collapsing the `race` factor into a smaller number of levels
> would be sensible in this case. You’ll also want to assess the role of
> missingness in this work, and consider removing the cases with missing
> values (or imputing them with simple imputation) if they include only
> a small fraction of the total sample. Be sure to provide a written
> explanation of your findings, in complete sentences.

## A Smaller Data Set

We’ll select the variables we need for questions 1-3 in this homework,
and then look over that new data set.

``` r
hw2_small <- hbp330 %>%
  select(subject, income, race, sex, insurance)

skim(hw2_small)
```

    Skim summary statistics
     n obs: 330 
     n variables: 5 
    
    -- Variable type:character -------------------------------------------------------------------------------------------------
      variable missing complete   n min max empty n_unique
     insurance       0      330 330   8  10     0        4
          race       2      328 330   5  12     0        4
           sex       0      330 330   1   1     0        2
       subject       0      330 330   4   4     0      330
    
    -- Variable type:numeric ---------------------------------------------------------------------------------------------------
     variable missing complete   n     mean       sd   p0   p25   p50   p75
       income       0      330 330 35342.73 15888.27 6800 25600 30600 42475
       p100
     147400

We have two missing values in the `race` variable, out of a total of 330
people, and given that this only affects less than 1% of the subjects in
all, I think we’ll just omit those cases for questions 1-3.

``` r
hw2_q13 <- hw2_small %>% na.omit()

hw2_q13
```

    # A tibble: 328 x 5
       subject income race     sex   insurance 
       <chr>    <dbl> <chr>    <chr> <chr>     
     1 A001     56600 Black/AA M     Medicaid  
     2 A002     41900 Black/AA M     Medicaid  
     3 A004     18000 Black/AA F     Medicare  
     4 A005     29400 Black/AA F     Medicare  
     5 A006     23700 Black/AA M     Commercial
     6 A007     29000 Black/AA M     Medicaid  
     7 A008     29100 Black/AA F     Medicare  
     8 A009     28000 Black/AA F     Commercial
     9 A010     57100 Black/AA M     Commercial
    10 A011     13700 Black/AA F     Medicaid  
    # ... with 318 more rows

## Should we collapse the `race` categories?

``` r
hw2_q13 %>% count(race)
```

    # A tibble: 4 x 2
      race             n
      <chr>        <int>
    1 Asian/PI        10
    2 Black/AA       180
    3 Multi-Racial     7
    4 White          131

The Asian/Pacific Islander and Multi-Racial categories are quite small.
Perhaps it would make sense to collapse them together. We’ll do so, into
a new factor called `race_3` (for three categories) and we’ll also
reorder the categories in order of median income.

``` r
hw2_q13 <- hw2_q13 %>% 
  mutate(race_3 = fct_collapse(race, 
                     Other = c("Asian/PI", "Multi-Racial"))) %>%
  mutate(race_3 = fct_reorder(race_3, income, median))
```

and, as a sanity check …

``` r
hw2_q13 %>% group_by(race_3, race) %>% 
  summarize(n = n(), median(income))
```

    # A tibble: 4 x 4
    # Groups:   race_3 [?]
      race_3   race             n `median(income)`
      <fct>    <chr>        <int>            <dbl>
    1 Black/AA Black/AA       180            29300
    2 White    White          131            30700
    3 Other    Asian/PI        10            44600
    4 Other    Multi-Racial     7            25600

An obvious problem with this approach is that the Asian/PI and
Multi-Racial groups are at the opposite ends of the spectrum in terms of
`income` in these data, so it’s difficult to justify putting them
together.

## EDA for `income` by `race_3` group

We need to do some exploratory data analysis. Let’s look at the `income`
data within the three `race_3` categories.

``` r
ggplot(hw2_q13, aes(x = income, fill = race_3)) +
  geom_histogram(bins = 20, col = "white") +
  guides(fill = FALSE) +
  facet_wrap(~ race_3)
```

![](hw2sketch_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

There are three large outliers in the “Black/AA” group, which is a bit
surprising, although otherwise there’s at most a modest skew apparent in
each group. There’s no motivation I can see for removing these outliers.
These data look a little right-skewed in each case, but generally
sufficiently well-approximated by Normal distributions to let me feel
comfortable summarizing them with means and standard deviations, at
least to start. Our numerical summaries are:

``` r
hw2_q13 %>% group_by(race_3) %>%
  skim(income)
```

    Skim summary statistics
     n obs: 328 
     n variables: 6 
     group variables: race_3 
    
    -- Variable type:numeric ---------------------------------------------------------------------------------------------------
       race_3 variable missing complete   n     mean       sd    p0   p25
     Black/AA   income       0      180 180 34801.11 18991.17  6800 24700
        White   income       0      131 131 35456.49 11222.64 15800 25850
        Other   income       0       17  17 39564.71 10304.36 16500 37800
       p50   p75   p100
     29300 41550 147400
     30700 42100  71400
     44300 45200  54000

## Building the ANOVA model

This is a one-way analysis of variance model, after collapsing to three
`race` categories.

``` r
hw2_model1 <- lm(income ~ race_3, data = hw2_q13)
anova(hw2_model1)
```

``` 
Analysis of Variance Table

Response: income
           Df     Sum Sq   Mean Sq F value Pr(>F)
race_3      2 3.5717e+08 178584097  0.7024 0.4961
Residuals 325 8.2631e+10 254249233               
```

``` r
summary(hw2_model1)
```

``` 

Call:
lm(formula = income ~ race_3, data = hw2_q13)

Residuals:
   Min     1Q Median     3Q    Max 
-28001  -9856  -4806   6582 112599 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  34801.1     1188.5  29.282   <2e-16 ***
race_3White    655.4     1831.2   0.358    0.721    
race_3Other   4763.6     4045.8   1.177    0.240    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 15950 on 325 degrees of freedom
Multiple R-squared:  0.004304,  Adjusted R-squared:  -0.001824 
F-statistic: 0.7024 on 2 and 325 DF,  p-value: 0.4961
```

``` r
TukeyHSD(aov(income ~ race_3, data = hw2_q13))
```

``` 
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = income ~ race_3, data = hw2_q13)

$race_3
                    diff       lwr       upr     p adj
White-Black/AA  655.3774 -3656.210  4966.965 0.9318496
Other-Black/AA 4763.5948 -4762.202 14289.392 0.4675092
Other-White    4108.2173 -5570.096 13786.531 0.5777445
```

Our conclusion from the Tukey HSD comparisons, and from the ANOVA F test
in the `anova` and `summary` output for the linear model is that there
are no statistically significant differences in income across our three
race groups. This is still true (see below) even if we don’t separate
out the two small groups in the original `race` variable.

``` r
anova(lm(income ~ race, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
           Df     Sum Sq   Mean Sq F value Pr(>F)
race        3 1.0906e+09 363518149  1.4381 0.2316
Residuals 324 8.1898e+10 252770415               
```

## Collapsing `race` to Two Categories?

You certainly could have collapsed the races down to two categories,
yielding a t test, rather than an ANOVA, essentially. That’s not an easy
choice - since the question of whether you should look at White vs. all
others, or instead at Black/AA vs. all others may have some impact on
your results. And it’s not obvious which of the smaller groups should
get paired with each of the larger groups - by `income`, we’d get one
answer, but that isn’t entirely satisfying.

In terms of results from ANOVA, if we combine `race` categories to just
“White” vs. all others, we get nowhere near a statistically
significant effect.

``` r
anova(lm(income ~ race == "White", data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                 Df     Sum Sq   Mean Sq F value Pr(>F)
race == "White"   1 4.6960e+06   4696034  0.0184  0.892
Residuals       326 8.2983e+10 254550530               
```

If we combine instead into “Black/AA” vs. all others, we get a somewhat
different result, but a similar conclusion with regard to statistical
significance.

``` r
anova(lm(income ~ race == "Black/AA", data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                    Df     Sum Sq   Mean Sq F value Pr(>F)
race == "Black/AA"   1 1.0321e+08 103208192  0.4059 0.5245
Residuals          326 8.2885e+10 254248345               
```

## Transforming the `income` data?

You might consider a transformation of the `income` data - a logarithm
might be one good choice - so as to reduce the impact of the outliers
and reduce the effect of the observed right skew. The problem there is
that the result is much less interpretible, unless you make predictions
on the transformed (let’s say - logarithmic) scale, and then
back-transform out of it. If you do use a logarithm to transform income,
then `race` with four categories has a statistically detectable effect
in ANOVA.

``` r
anova(lm(log(income) ~ race, data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
               Df Sum Sq Mean Sq F value Pr(>F)  
    race        3  1.616 0.53859  3.5549 0.0147 *
    Residuals 324 49.088 0.15151                 
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

and this remains (just barely) true after collapsing `race` to three
categories:

``` r
anova(lm(log(income) ~ race_3, data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
               Df Sum Sq Mean Sq F value  Pr(>F)  
    race_3      2  0.930 0.46518  3.0374 0.04932 *
    Residuals 325 49.773 0.15315                  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

and it’s still significant if you collapse `race` to just “Black/AA”
vs. all others…

``` r
anova(lm(log(income) ~ (race == "Black/AA"), data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
                        Df Sum Sq Mean Sq F value  Pr(>F)  
    race == "Black/AA"   1  0.739 0.73862  4.8192 0.02885 *
    Residuals          326 49.965 0.15327                  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

but it’s not significant if you collapse `race` to just White vs. all
others…

``` r
anova(lm(log(income) ~ (race == "White"), data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: log(income)
                 Df Sum Sq Mean Sq F value Pr(>F)
race == "White"   1  0.338 0.33802  2.1879 0.1401
Residuals       326 50.365 0.15450               
```

# Question 2. (15 points)

> Now fit a two-factor ANOVA model to evaluate the effects of `race`
> (either collapsed or uncollapsed, as you decide) and `sex` on
> `income`. What can you conclude? Be sure to provide a written
> explanation of your findings, in complete sentences. Your answer for
> Question 2 is not complete unless you provide a plot that helps you
> decide whether an interaction term is useful.

## The ANOVA model with interaction

I’m going to stick with the “three-category” collapsed version of `race`
in this sketch, and with the untransformed `income` values.

### A Means Plot to look for meaningful interaction

``` r
hw2q2_summary <- hw2_q13 %>%
  group_by(race_3, sex) %>%
  summarize(meaninc = mean(income), seinc = sd(income)/sqrt(n()) )

pd <- position_dodge(0.2)

ggplot(hw2q2_summary, aes(x = race_3, y = meaninc, color = sex)) +
  geom_errorbar(aes(ymin = meaninc - seinc, 
                    ymax = meaninc + seinc),
                width = 0.2, position = pd) +
  geom_point(size = 2, position = pd) +
  geom_line(aes(group = sex), position = pd) +
  labs(y = "Income ($)",
       x = "Race (collapsed to 3 categories)",
       title = "Observed Means (+/- standard error) for Income")
```

![](hw2sketch_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

Note that if you fail to collapse the Race groups, then the Multi-Racial
group will throw an error when you try to plot error bars, because a
standard deviation (and thus a standard error) cannot be estimated.

It looks like an interaction might be useful in this situation, as the
lines are not parallel, but it’s not clear that the Other group is
providing a lot of useful information.

### ANOVA test for the model

``` r
hw2_model2_with_int <- lm(income ~ race_3*sex, data = hw2_q13)
anova(hw2_model2_with_int)
```

``` 
Analysis of Variance Table

Response: income
            Df     Sum Sq   Mean Sq F value Pr(>F)
race_3       2 3.5717e+08 178584097  0.7019 0.4964
sex          1 2.2195e+08 221954781  0.8724 0.3510
race_3:sex   2 4.8638e+08 243191041  0.9559 0.3856
Residuals  322 8.1923e+10 254418210               
```

It doesn’t look like the interaction term is significant, however,
although it does account for more variation than the `race_3` or `sex`
main effects within this model. The conclusion would be that there
aren’t any statistically significant differences in `income`
attributable to either `race_3` or `sex`.

``` r
summary(hw2_model2_with_int)
```

``` 

Call:
lm(formula = income ~ race_3 * sex, data = hw2_q13)

Residuals:
   Min     1Q Median     3Q    Max 
-25739  -9611  -4625   6775 111496 

Coefficients:
                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)       35904.1     1450.0  24.761   <2e-16 ***
race_3White        -893.5     2344.1  -0.381    0.703    
race_3Other        8579.2     6671.3   1.286    0.199    
sexM              -3365.1     2532.7  -1.329    0.185    
race_3White:sexM   4408.1     3788.2   1.164    0.245    
race_3Other:sexM  -4236.4     8482.1  -0.499    0.618    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 15950 on 322 degrees of freedom
Multiple R-squared:  0.01284,   Adjusted R-squared:  -0.002489 
F-statistic: 0.8376 on 5 and 322 DF,  p-value: 0.5238
```

## The ANOVA model without interaction

A model without interaction also finds no statistically significant
differences in `income` by either `race_3` or `sex`.

``` r
hw2_model2_without <- lm(income ~ race_3 + sex, data = hw2_q13)
anova(hw2_model2_without)
```

``` 
Analysis of Variance Table

Response: income
           Df     Sum Sq   Mean Sq F value Pr(>F)
race_3      2 3.5717e+08 178584097  0.7021 0.4963
sex         1 2.2195e+08 221954781  0.8726 0.3509
Residuals 324 8.2409e+10 254348907               
```

## What if you instead didn’t collapse on `race`?

Suppose instead we did this without collapsing on race.

``` r
anova(lm(income ~ race * sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
           Df     Sum Sq   Mean Sq F value Pr(>F)
race        3 1.0906e+09 363518149  1.4348 0.2325
sex         1 1.6091e+08 160912821  0.6351 0.4261
race:sex    3 6.6198e+08 220659829  0.8709 0.4564
Residuals 320 8.1075e+10 253358506               
```

``` r
anova(lm(income ~ race + sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
           Df     Sum Sq   Mean Sq F value Pr(>F)
race        3 1.0906e+09 363518149  1.4365 0.2320
sex         1 1.6091e+08 160912821  0.6359 0.4258
Residuals 323 8.1737e+10 253054803               
```

Doesn’t look like this `race*sex` interaction has a significant impact,
without collapsing.

## What if you collapsed into two categories on `race`?

``` r
anova(lm(income ~ (race == "White") * sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                     Df     Sum Sq   Mean Sq F value Pr(>F)
race == "White"       1 4.6960e+06   4696034  0.0184 0.8921
sex                   1 1.4534e+08 145336516  0.5706 0.4505
race == "White":sex   1 3.1986e+08 319858959  1.2559 0.2633
Residuals           324 8.2518e+10 254686041               
```

``` r
anova(lm(income ~ (race == "White") + sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                 Df     Sum Sq   Mean Sq F value Pr(>F)
race == "White"   1 4.6960e+06   4696034  0.0184 0.8921
sex               1 1.4534e+08 145336516  0.5702 0.4507
Residuals       325 8.2838e+10 254886573               
```

Again, no evidence that the interaction of `sex` and `race == White` has
a significant impact.

``` r
anova(lm(income ~ (race == "Black/AA") * sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                        Df     Sum Sq   Mean Sq F value Pr(>F)
race == "Black/AA"       1 1.0321e+08 103208192  0.4057 0.5246
sex                      1 1.7619e+08 176186535  0.6925 0.4059
race == "Black/AA":sex   1 2.8130e+08 281295440  1.1057 0.2938
Residuals              324 8.2427e+10 254405798               
```

``` r
anova(lm(income ~ (race == "Black/AA") + sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: income
                    Df     Sum Sq   Mean Sq F value Pr(>F)
race == "Black/AA"   1 1.0321e+08 103208192  0.4056 0.5247
sex                  1 1.7619e+08 176186535  0.6923 0.4060
Residuals          325 8.2709e+10 254488536               
```

Again, no evidence that the interaction of `sex` and `race == Black/AA`
has a significant impact.

## What if you used `log(income)` instead of `income`?

I looked at all four options we’ve been discussing for collapsing, after
a log transformation. Regardless of your collapsing decision, the
interaction term won’t be statistically detectable. Whether the `race`
main effect is detectable depends on your collapsing decision.

``` r
anova(lm(log(income) ~ race_3 * sex, data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
                Df Sum Sq Mean Sq F value  Pr(>F)  
    race_3       2  0.930 0.46518  3.0487 0.04879 *
    sex          1  0.141 0.14107  0.9246 0.33700  
    race_3:sex   2  0.501 0.25067  1.6429 0.19504  
    Residuals  322 49.131 0.15258                  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
anova(lm(log(income) ~ race * sex, data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
               Df Sum Sq Mean Sq F value  Pr(>F)  
    race        3  1.616 0.53859  3.5612 0.01459 *
    sex         1  0.095 0.09465  0.6259 0.42946  
    race:sex    3  0.597 0.19891  1.3152 0.26939  
    Residuals 320 48.396 0.15124                  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
anova(lm(log(income) ~ (race == "White") * sex, data = hw2_q13))
```

``` 
Analysis of Variance Table

Response: log(income)
                     Df Sum Sq Mean Sq F value Pr(>F)
race == "White"       1  0.338 0.33802  2.1905 0.1398
sex                   1  0.068 0.06838  0.4431 0.5061
race == "White":sex   1  0.298 0.29843  1.9339 0.1653
Residuals           324 49.999 0.15432               
```

``` r
anova(lm(log(income) ~ (race == "Black/AA") * sex, data = hw2_q13))
```

    Analysis of Variance Table
    
    Response: log(income)
                            Df Sum Sq Mean Sq F value  Pr(>F)  
    race == "Black/AA"       1  0.739 0.73862  4.8254 0.02875 *
    sex                      1  0.110 0.10964  0.7163 0.39800  
    race == "Black/AA":sex   1  0.261 0.26130  1.7071 0.19229  
    Residuals              324 49.594 0.15307                  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Question 3. (15 points)

> Now attempt to fit a two-factor ANOVA model to evaluate the effect of
> `race` and `insurance` on `income`. A problem should occur when you
> fit this `race` and `insurance` model, that doesn’t happen, for
> instance, when you evaluate the effects of both `race` and `sex` on
> `income`. So what happens when you fit the `race`-`insurance` model,
> exactly, and why does it happen? (Note that a plot regarding
> interaction may or may not be helpful, but is not needed in your
> response to Question 3.)

This question obviously caused some consternation as the deadline
loomed. I eventually posted a pair of hints - the second of which was:

> In order to see this problem, you’ll need to have at least three race
> groups (so if you’ve collapsed the original data more than that, don’t
> - at least for question 3) and you’ll need to fit an interaction term,
> and look at more than just the anova results, but in fact also
> summarize the linear model.

So that’s what we’ll do here.

## The First Attempt at the Model

``` r
hw2_model3 <- lm(income ~ race_3*insurance, data = hw2_q13)
anova(hw2_model3)
```

``` 
Analysis of Variance Table

Response: income
                  Df     Sum Sq   Mean Sq F value Pr(>F)
race_3             2 3.5717e+08 178584097  0.6966 0.4990
insurance          3 1.0785e+09 359491489  1.4022 0.2421
race_3:insurance   4 2.6036e+07   6508994  0.0254 0.9987
Residuals        318 8.1526e+10 256372611               
```

That *p* value for the interaction term looks a little high. What’s
happening?

``` r
summary(hw2_model3)
```

``` 

Call:
lm(formula = income ~ race_3 * insurance, data = hw2_q13)

Residuals:
   Min     1Q Median     3Q    Max 
-26797  -9373  -3923   6046 112885 

Coefficients: (2 not defined because of singularities)
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                     36990.9     2787.3  13.271   <2e-16 ***
race_3White                      1074.1     4537.3   0.237    0.813    
race_3Other                      6085.1     8219.3   0.740    0.460    
insuranceMedicaid               -3393.8     3388.9  -1.001    0.317    
insuranceMedicare               -2476.0     3351.6  -0.739    0.461    
insuranceUninsured               5809.1     8477.1   0.685    0.494    
race_3White:insuranceMedicaid    -998.1     5406.8  -0.185    0.854    
race_3Other:insuranceMedicaid    -436.1     9539.1  -0.046    0.964    
race_3White:insuranceMedicare    -317.0     5401.8  -0.059    0.953    
race_3Other:insuranceMedicare        NA         NA      NA       NA    
race_3White:insuranceUninsured  -2885.2    10638.0  -0.271    0.786    
race_3Other:insuranceUninsured       NA         NA      NA       NA    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 16010 on 318 degrees of freedom
Multiple R-squared:  0.01761,   Adjusted R-squared:  -0.01019 
F-statistic: 0.6335 on 9 and 318 DF,  p-value: 0.7683
```

Aha - we’ve got some terms that the model cannot fit - `NA` values in
the estimates are a big problem.

## Exploring the Data - Why Can’t We Estimate all of our Coefficients?

As to why this happens, a little more exploratory data analysis would
tell us…

``` r
hw2_q13 %>% count(race_3, insurance)
```

    # A tibble: 10 x 3
       race_3   insurance      n
       <fct>    <chr>      <int>
     1 Black/AA Commercial    33
     2 Black/AA Medicaid      69
     3 Black/AA Medicare      74
     4 Black/AA Uninsured      4
     5 White    Commercial    20
     6 White    Medicaid      52
     7 White    Medicare      50
     8 White    Uninsured      9
     9 Other    Medicaid      13
    10 Other    Medicare       4

We see that for the “Other” `race_3` group, we only observe subjects
with Medicaid and Medicare insurance. So the model cannot fit the
interaction of `race_3` with `insurance`, because it cannot make either
a “Other race, Commercial” or “Other race, Uninsured” estimate.

  - Note that the `NA` values don’t correspond to the counts of 0.
    That’s because of the order in which the models are estimated. If,
    instead of running `race_3 * insurance` you instead run `insurance *
    race_3` you get the following…

<!-- end list -->

``` r
hw2_model3a <- lm(income ~ insurance*race_3, data = hw2_q13)
summary(hw2_model3a)
```

``` 

Call:
lm(formula = income ~ insurance * race_3, data = hw2_q13)

Residuals:
   Min     1Q Median     3Q    Max 
-26797  -9373  -3923   6046 112885 

Coefficients: (2 not defined because of singularities)
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                     36990.9     2787.3  13.271   <2e-16 ***
insuranceMedicaid               -3393.8     3388.9  -1.001    0.317    
insuranceMedicare               -2476.0     3351.6  -0.739    0.461    
insuranceUninsured               5809.1     8477.1   0.685    0.494    
race_3White                      1074.1     4537.3   0.237    0.813    
race_3Other                      6085.1     8219.3   0.740    0.460    
insuranceMedicaid:race_3White    -998.1     5406.8  -0.185    0.854    
insuranceMedicare:race_3White    -317.0     5401.8  -0.059    0.953    
insuranceUninsured:race_3White  -2885.2    10638.0  -0.271    0.786    
insuranceMedicaid:race_3Other    -436.1     9539.1  -0.046    0.964    
insuranceMedicare:race_3Other        NA         NA      NA       NA    
insuranceUninsured:race_3Other       NA         NA      NA       NA    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 16010 on 318 degrees of freedom
Multiple R-squared:  0.01761,   Adjusted R-squared:  -0.01019 
F-statistic: 0.6335 on 9 and 318 DF,  p-value: 0.7683
```

Now, at least one of the two NAs corresponds to a count of zero.
Changing the order of the levels in the `race_3` and/or insurance
factors which also have an impact on which estimates are missing in this
output.

  - There’s no doubt about it. You really do need to look at the data
    closely.

## Does this change if you instead look at log(`income`) as your outcome?

Nope. Same problem.

``` r
summary(lm(log(income) ~ race_3*insurance, data = hw2_q13))
```

``` 

Call:
lm(formula = log(income) ~ race_3 * insurance, data = hw2_q13)

Residuals:
     Min       1Q   Median       3Q      Max 
-1.48818 -0.23697 -0.05693  0.22432  1.54889 

Coefficients: (2 not defined because of singularities)
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    10.38202    0.06828 152.041   <2e-16 ***
race_3White                     0.10817    0.11116   0.973    0.331    
race_3Other                     0.22698    0.20136   1.127    0.260    
insuranceMedicaid              -0.06916    0.08302  -0.833    0.405    
insuranceMedicare              -0.03001    0.08211  -0.366    0.715    
insuranceUninsured              0.25566    0.20768   1.231    0.219    
race_3White:insuranceMedicaid  -0.03387    0.13246  -0.256    0.798    
race_3Other:insuranceMedicaid  -0.00644    0.23370  -0.028    0.978    
race_3White:insuranceMedicare  -0.03373    0.13234  -0.255    0.799    
race_3Other:insuranceMedicare        NA         NA      NA       NA    
race_3White:insuranceUninsured -0.16413    0.26062  -0.630    0.529    
race_3Other:insuranceUninsured       NA         NA      NA       NA    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.3923 on 318 degrees of freedom
Multiple R-squared:  0.03495,   Adjusted R-squared:  0.007642 
F-statistic:  1.28 on 9 and 318 DF,  p-value: 0.2469
```

# Session Information

``` r
sessioninfo::session_info()
```

    - Session info ----------------------------------------------------------
     setting  value                       
     version  R version 3.5.2 (2018-12-20)
     os       Windows 10 x64              
     system   x86_64, mingw32             
     ui       RTerm                       
     language (EN)                        
     collate  English_United States.1252  
     ctype    English_United States.1252  
     tz       America/New_York            
     date     2019-02-08                  
    
    - Packages --------------------------------------------------------------
     package     * version date       lib source        
     assertthat    0.2.0   2017-04-11 [1] CRAN (R 3.5.0)
     backports     1.1.3   2018-12-14 [1] CRAN (R 3.5.2)
     bindr         0.1.1   2018-03-13 [1] CRAN (R 3.5.0)
     bindrcpp    * 0.2.2   2018-03-29 [1] CRAN (R 3.5.0)
     broom       * 0.5.1   2018-12-05 [1] CRAN (R 3.5.2)
     cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.5.0)
     cli           1.0.1   2018-09-25 [1] CRAN (R 3.5.1)
     colorspace    1.4-0   2019-01-13 [1] CRAN (R 3.5.2)
     crayon        1.3.4   2017-09-16 [1] CRAN (R 3.5.0)
     digest        0.6.18  2018-10-10 [1] CRAN (R 3.5.1)
     dplyr       * 0.7.8   2018-11-10 [1] CRAN (R 3.5.1)
     evaluate      0.12    2018-10-09 [1] CRAN (R 3.5.1)
     fansi         0.4.0   2018-10-05 [1] CRAN (R 3.5.1)
     forcats     * 0.3.0   2018-02-19 [1] CRAN (R 3.5.0)
     generics      0.0.2   2018-11-29 [1] CRAN (R 3.5.2)
     ggplot2     * 3.1.0   2018-10-25 [1] CRAN (R 3.5.1)
     glue          1.3.0   2018-07-17 [1] CRAN (R 3.5.1)
     gtable        0.2.0   2016-02-26 [1] CRAN (R 3.5.0)
     haven         2.0.0   2018-11-22 [1] CRAN (R 3.5.2)
     hms           0.4.2   2018-03-10 [1] CRAN (R 3.5.0)
     htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.5.0)
     httr          1.4.0   2018-12-11 [1] CRAN (R 3.5.2)
     janitor     * 1.1.1   2018-07-31 [1] CRAN (R 3.5.1)
     jsonlite      1.6     2018-12-07 [1] CRAN (R 3.5.2)
     knitr         1.21    2018-12-10 [1] CRAN (R 3.5.2)
     labeling      0.3     2014-08-23 [1] CRAN (R 3.5.0)
     lattice       0.20-38 2018-11-04 [1] CRAN (R 3.5.2)
     lazyeval      0.2.1   2017-10-29 [1] CRAN (R 3.5.0)
     lubridate     1.7.4   2018-04-11 [1] CRAN (R 3.5.0)
     magrittr      1.5     2014-11-22 [1] CRAN (R 3.5.2)
     modelr        0.1.3   2019-02-05 [1] CRAN (R 3.5.2)
     munsell       0.5.0   2018-06-12 [1] CRAN (R 3.5.1)
     nlme          3.1-137 2018-04-07 [2] CRAN (R 3.5.2)
     pillar        1.3.1   2018-12-15 [1] CRAN (R 3.5.2)
     pkgconfig     2.0.2   2018-08-16 [1] CRAN (R 3.5.1)
     plyr          1.8.4   2016-06-08 [1] CRAN (R 3.5.0)
     purrr       * 0.3.0   2019-01-27 [1] CRAN (R 3.5.2)
     R6            2.3.0   2018-10-04 [1] CRAN (R 3.5.1)
     Rcpp          1.0.0   2018-11-07 [1] CRAN (R 3.5.1)
     readr       * 1.3.1   2018-12-21 [1] CRAN (R 3.5.2)
     readxl        1.2.0   2018-12-19 [1] CRAN (R 3.5.2)
     rlang         0.3.1   2019-01-08 [1] CRAN (R 3.5.2)
     rmarkdown     1.11    2018-12-08 [1] CRAN (R 3.5.2)
     rstudioapi    0.9.0   2019-01-09 [1] CRAN (R 3.5.2)
     rvest         0.3.2   2016-06-17 [1] CRAN (R 3.5.0)
     scales        1.0.0   2018-08-09 [1] CRAN (R 3.5.1)
     sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.5.1)
     skimr       * 1.0.4   2019-01-13 [1] CRAN (R 3.5.2)
     snakecase     0.9.2   2018-08-14 [1] CRAN (R 3.5.1)
     stringi       1.2.4   2018-07-20 [1] CRAN (R 3.5.1)
     stringr     * 1.3.1   2018-05-10 [1] CRAN (R 3.5.0)
     tibble      * 2.0.1   2019-01-12 [1] CRAN (R 3.5.2)
     tidyr       * 0.8.2   2018-10-28 [1] CRAN (R 3.5.1)
     tidyselect    0.2.5   2018-10-11 [1] CRAN (R 3.5.1)
     tidyverse   * 1.2.1   2017-11-14 [1] CRAN (R 3.5.2)
     utf8          1.1.4   2018-05-24 [1] CRAN (R 3.5.0)
     withr         2.1.2   2018-03-15 [1] CRAN (R 3.5.0)
     xfun          0.4     2018-10-23 [1] CRAN (R 3.5.1)
     xml2          1.2.0   2018-01-24 [1] CRAN (R 3.5.0)
     yaml          2.2.0   2018-07-25 [1] CRAN (R 3.5.1)
    
    [1] C:/Users/Thomas/Documents/R/win-library/3.5
    [2] C:/Program Files/R/R-3.5.2/library
