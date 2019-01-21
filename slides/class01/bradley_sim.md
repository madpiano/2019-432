
Creating the `bradley` data set, working from the top part of Table 1 of Bradley SM et al. (2019) "Incidence, Risk Factors, and Outcomes Associated With In-Hospital Acute Myocardial Infarction" *JAMA Network Open* 2(1): e187348. <doi:10.1001/jamanetworkopen.2018.7348>

``` r
library(tidyverse)
```

    ## -- Attaching packages ------------------------------------------------------------ tidyverse 1.2.1 --

    ## v ggplot2 3.1.0     v purrr   0.2.5
    ## v tibble  2.0.1     v dplyr   0.7.8
    ## v tidyr   0.8.2     v stringr 1.3.1
    ## v readr   1.3.1     v forcats 0.3.0

    ## -- Conflicts --------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

Simulating Cases
----------------

``` r
set.seed(20190122)
status <- rep("Case", 687)
age0 <- round(rnorm(687, mean = 73.3, sd = 10.1))
sex0 <- c(rep("Male", 677), rep("Female", 10))
race_eth0 <- c(rep("white", 546), rep("non-white", 141))
married0 <- c(rep(1, 356), rep(0, 331))
location0 <- c(rep("ICU", 186), rep("Bed", 446), 
               rep("Other", 55))

dat_cases <- tibble(
    status, age = sample(age0), sex = sample(sex0),
    race_eth = sample(race_eth0), married = sample(married0),
    location = sample(location0)
)
```

Simulating Controls
-------------------

``` r
status <- rep("Control", 687)
age0 <- round(rnorm(687, mean = 73.4, sd = 10.3))
sex0 <- c(rep("Male", 666), rep("Female", 21))
race_eth0 <- c(rep("white", 527), rep("non-white", 160))
married0 <- c(rep(1, 310), rep(0, 377))
location0 <- c(rep("ICU", 65), rep("Bed", 580), 
               rep("Other", 42))

dat_controls <- tibble(
    status, age = sample(age0), sex = sample(sex0), 
    race_eth = sample(race_eth0), married = sample(married0), 
    location = sample(location0)
)
```

Combining the Data
------------------

``` r
bradley_raw <- bind_rows(dat_cases, dat_controls)
bradley_raw$subject <- sample(1:nrow(bradley_raw))

bradley <- bradley_raw %>%
    select(subject, everything()) %>%
    arrange(subject)

bradley
```

    ## # A tibble: 1,374 x 7
    ##    subject status    age sex    race_eth  married location
    ##      <int> <chr>   <dbl> <chr>  <chr>       <dbl> <chr>   
    ##  1       1 Case      106 Male   non-white       1 ICU     
    ##  2       2 Case       71 Female white           1 Other   
    ##  3       3 Control    67 Male   white           1 Bed     
    ##  4       4 Case       68 Male   white           0 Bed     
    ##  5       5 Control    57 Male   white           1 Bed     
    ##  6       6 Control    67 Male   white           1 Bed     
    ##  7       7 Case       56 Male   white           1 Bed     
    ##  8       8 Control    85 Male   white           0 Bed     
    ##  9       9 Case       79 Male   white           1 ICU     
    ## 10      10 Control    79 Male   white           0 ICU     
    ## # ... with 1,364 more rows

``` r
write_csv(bradley, "data/bradley.csv")
```
