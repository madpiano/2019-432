Building Table 1 from the `bradley.csv` data
================

Setup
-----

Load Packages
-------------

``` r
library(tableone)
library(janitor)
library(tidyverse)
```

    -- Attaching packages ------------------------------------------------------------ tidyverse 1.2.1 --

    v ggplot2 3.1.0     v purrr   0.2.5
    v tibble  2.0.1     v dplyr   0.7.8
    v tidyr   0.8.2     v stringr 1.3.1
    v readr   1.3.1     v forcats 0.3.0

    -- Conflicts --------------------------------------------------------------- tidyverse_conflicts() --
    x dplyr::filter() masks stats::filter()
    x dplyr::lag()    masks stats::lag()

Ingest the `bradley.csv` data
-----------------------------

``` r
brad_raw <- read_csv("data/bradley.csv") %>% 
    clean_names()
```

    Parsed with column specification:
    cols(
      subject = col_double(),
      status = col_character(),
      age = col_double(),
      sex = col_character(),
      race_eth = col_character(),
      married = col_double(),
      location = col_character()
    )

``` r
brad_raw
```

    # A tibble: 1,374 x 7
       subject status    age sex    race_eth  married location
         <dbl> <chr>   <dbl> <chr>  <chr>       <dbl> <chr>   
     1       1 Case      106 Male   non-white       1 ICU     
     2       2 Case       71 Female white           1 Other   
     3       3 Control    67 Male   white           1 Bed     
     4       4 Case       68 Male   white           0 Bed     
     5       5 Control    57 Male   white           1 Bed     
     6       6 Control    67 Male   white           1 Bed     
     7       7 Case       56 Male   white           1 Bed     
     8       8 Control    85 Male   white           0 Bed     
     9       9 Case       79 Male   white           1 ICU     
    10      10 Control    79 Male   white           0 ICU     
    # ... with 1,364 more rows

Attempt 1
---------

``` r
vars <- c("age", "sex", "race_eth", "married", "location")
trt <- c("status")

attempt_1 <- CreateTableOne(data = brad_raw, 
                       vars = vars, 
                       strata = trt)
print(attempt_1)
```

                          Stratified by status
                           Case          Control       p      test
      n                      687           687                    
      age (mean (sd))      73.20 (9.96)  73.16 (9.75)   0.941     
      sex = Male (%)         677 (98.5)    666 (96.9)   0.069     
      race_eth = white (%)   546 (79.5)    527 (76.7)   0.240     
      married (mean (sd))   0.52 (0.50)   0.45 (0.50)   0.013     
      location (%)                                     <0.001     
         Bed                 446 (64.9)    580 (84.4)             
         ICU                 186 (27.1)     65 ( 9.5)             
         Other                55 ( 8.0)     42 ( 6.1)             

What's wrong here?
------------------

``` r
brad_new <- brad_raw %>%
    mutate(marital = fct_recode(factor(married), 
                                "yes" = "1", 
                                "no"  = "0")) %>%
    mutate(loc = fct_relevel(location, 
                             "ICU", "Bed", "Other"))
```

Second Attempt
--------------

``` r
vars <- c("age", "sex", "race_eth", "marital", "loc")
factorvars <- c("sex", "race_eth", "marital", "loc")
trt <- c("status")

attempt_2 <- CreateTableOne(data = brad_new, 
                       vars = vars, 
                       factorVars = factorvars,
                       strata = trt)
print(attempt_2)
```

                          Stratified by status
                           Case          Control       p      test
      n                      687           687                    
      age (mean (sd))      73.20 (9.96)  73.16 (9.75)   0.941     
      sex = Male (%)         677 (98.5)    666 (96.9)   0.069     
      race_eth = white (%)   546 (79.5)    527 (76.7)   0.240     
      marital = yes (%)      356 (51.8)    310 (45.1)   0.015     
      loc (%)                                          <0.001     
         ICU                 186 (27.1)     65 ( 9.5)             
         Bed                 446 (64.9)    580 (84.4)             
         Other                55 ( 8.0)     42 ( 6.1)             

Show alternative summaries?
---------------------------

``` r
print(attempt_2, 
      nonnormal = c("age"),
      exact = c("sex", "race_eth", "marital"))
```

                          Stratified by status
                           Case                 Control              p     
      n                      687                  687                      
      age (median [IQR])   73.00 [67.00, 80.00] 74.00 [66.00, 80.00]  0.951
      sex = Male (%)         677 (98.5)           666 (96.9)          0.068
      race_eth = white (%)   546 (79.5)           527 (76.7)          0.240
      marital = yes (%)      356 (51.8)           310 (45.1)          0.015
      loc (%)                                                        <0.001
         ICU                 186 (27.1)            65 ( 9.5)               
         Bed                 446 (64.9)           580 (84.4)               
         Other                55 ( 8.0)            42 ( 6.1)               
                          Stratified by status
                           test   
      n                           
      age (median [IQR])   nonnorm
      sex = Male (%)       exact  
      race_eth = white (%) exact  
      marital = yes (%)    exact  
      loc (%)                     
         ICU                      
         Bed                      
         Other                    

A more detailed summary?
------------------------

``` r
summary(attempt_2)
```


         ### Summary of continuous variables ###

    status: Case
          n miss p.miss mean sd median p25 p75 min max   skew  kurt
    age 687    0      0   73 10     73  67  80  38 106 -0.007 -0.03
    -------------------------------------------------------- 
    status: Control
          n miss p.miss mean sd median p25 p75 min max skew  kurt
    age 687    0      0   73 10     74  66  80  39 103 -0.1 -0.09

    p-values
          pNormal pNonNormal
    age 0.9411124   0.950587

    Standardize mean differences
             1 vs 2
    age 0.003986529

    =======================================================================================

         ### Summary of categorical variables ### 

    status: Case
          var   n miss p.miss     level freq percent cum.percent
          sex 687    0    0.0    Female   10     1.5         1.5
                                   Male  677    98.5       100.0
                                                                
     race_eth 687    0    0.0 non-white  141    20.5        20.5
                                  white  546    79.5       100.0
                                                                
      marital 687    0    0.0        no  331    48.2        48.2
                                    yes  356    51.8       100.0
                                                                
          loc 687    0    0.0       ICU  186    27.1        27.1
                                    Bed  446    64.9        92.0
                                  Other   55     8.0       100.0
                                                                
    -------------------------------------------------------- 
    status: Control
          var   n miss p.miss     level freq percent cum.percent
          sex 687    0    0.0    Female   21     3.1         3.1
                                   Male  666    96.9       100.0
                                                                
     race_eth 687    0    0.0 non-white  160    23.3        23.3
                                  white  527    76.7       100.0
                                                                
      marital 687    0    0.0        no  377    54.9        54.9
                                    yes  310    45.1       100.0
                                                                
          loc 687    0    0.0       ICU   65     9.5         9.5
                                    Bed  580    84.4        93.9
                                  Other   42     6.1       100.0
                                                                

    p-values
                  pApprox       pExact
    sex      6.926864e-02 6.760400e-02
    race_eth 2.403791e-01 2.403489e-01
    marital  1.513478e-02 1.510454e-02
    loc      1.429017e-17 3.999616e-18

    Standardize mean differences
                 1 vs 2
    sex      0.10797814
    race_eth 0.06690265
    marital  0.13427981
    loc      0.48923102

Send original attempt 2 to Excel for polish?
--------------------------------------------

One option is to **save the Table 1** to a `.csv` file, which you can then open directly in Excel. This is the approach I generally use. Note the addition of some `quote`, `noSpaces` and `printToggle` selections here.

``` r
brad_t1 <- print(attempt_2, 
      quote = FALSE, noSpaces = TRUE, printToggle = FALSE)

write.csv(brad_t1, file = "bradley_table1_result.csv")
```

You can then open the `brad_t1.csv` file in Excel and edit further.
