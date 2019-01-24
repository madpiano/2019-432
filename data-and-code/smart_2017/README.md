BRFSS SMART 2017 Data Cleanup
================

An Opening Note
===============

This material is essentially a revamped version of Chapter 17 of the [Course Notes](https://thomaselove.github.io/2019-432-book/cleaning-the-brfss-smart-data.html) in which I did similar work for the 2016 SMART. This version contains newer and more detailed data, though, and uses some better practices for data management.

Setup
=====

The Centers for Disease Control analyzes Behavioral Risk Factor Surveillance System (BRFSS) survey data for specific metropolitan and micropolitan statistical areas (MMSAs) in a program called the Selected Metropolitan/Micropolitan Area Risk Trends of BRFSS (SMART BRFSS.)

Here, we focus on data from:

-   the 2017 SMART BRFSS
-   from the Cleveland-Elyria, OH, Metropolitan Statistical Area, and the five other MSAs that include locations in the state of Ohio.

The purpose of this survey is to provide localized health information that can help public health practitioners identify local emerging health problems, plan and evaluate local responses, and efficiently allocate resources to specific needs.

Key resources
-------------

-   2017 [SMART:BRFSS main page](https://www.cdc.gov/brfss/smart/smart_2017.html), which links to:
    -   the 2017 SMART BRFSS MMSA Data, found in a zipped [SAS Transport Format](https://www.cdc.gov/brfss/annual_data/2017/files/MMSA2017_XPT.zip) file. The data were released in October 2018.
    -   the [MMSA Variable Layout](https://www.cdc.gov/brfss/annual_data/2017/MMSA_VarLayout_17.html) which simply lists the variables included in the data file
    -   the [Calculated Variables PDF](https://www.cdc.gov/brfss/annual_data/2017/pdf/2017-calculated-variables-version4-508.pdf) which describes the risk factors by data variable names - there is also an [online summary matrix of these calculated variables](https://www.cdc.gov/brfss/annual_data/2017/Summary_Matrix_17.html), as well.
    -   the lengthy [2017 Survey Questions PDF](https://www.cdc.gov/brfss/questionnaires/pdf-ques/2017_BRFSS_Pub_Ques_508_tagged.pdf) which lists all questions asked as part of the BRFSS in 2017
    -   the enormous [Codebook for the 2017 BRFSS Survey PDF](https://www.cdc.gov/brfss/annual_data/2017/pdf/codebook17_llcp-v2-508.pdf) which identifies the variables by name for us.

Package Loading
---------------

``` r
library(broom); library(janitor); library(haven)
library(Hmisc); library(feather); library(tidyverse)
```

Original Data Ingest (details not run here)
-------------------------------------------

To create the data files we'll use, I used the `read_xpt` function from the `haven` package to bring in the SAS XPT data file that is provided by CDC. The codes I used (but won't actually use here, since they take so long to run) are:

``` r
smart_2017_usa_raw <- read_xpt("data/MMSA2017.xpt") %>% 
    tbl_df() %>% clean_names()
```

Then, I filtered this full group to the six MMSAs (Metropolitan/Micropolitan Statistical Areas) which are at least partially located in Ohio.

|  MMSA Code| MMSA Name                                                   |
|----------:|-------------------------------------------------------------|
|      17140| Cincinnati, OH-KY-IN Metropolitan Statistical Area          |
|      17460| Cleveland-Elyria, OH, Metropolitan Statistical Area         |
|      18140| Columbus, OH, Metropolitan Statistical Area                 |
|      19380| Dayton, OH, Metropolitan Statistical Area                   |
|      26580| Huntington-Ashland, WV-KY-OH, Metropolitan Statistical Area |
|      45780| Toledo, OH, Metropolitan Statistical Area                   |

``` r
smart_2017_ohio_raw <- smart_2017_usa_raw %>%
    filter(mmsa %in% c(17140, 17460, 18140, 19380, 26580, 45780))
```

Finally, I filtered to the Cleveland-Elyria MSA:

``` r
smart_2017_cleve_raw <- smart_2017_oh_working_raw %>%
    filter(mmsa == 17460)
```

Then I wrote the Ohio- and Cleveland-specific data to new .csv data sets as well as the .feather format.

``` r
write_feather(smart_2017_usa_raw, "data/smart_2017_usa_raw.feather")
write_feather(smart_2017_ohio_raw, "data/smart_2017_ohio_raw")
write_feather(smart_2017_cleve_raw, "data/smart_2017_cleve_raw.feather")
```

``` r
write_csv(smart_2017_oh_working_raw, "data/smart_2017_ohio_raw.csv")
write_csv(smart_2017_cleve_raw, "data/smart_2017_cleve_raw.csv")
```

Start Here to Ingest/Clean Ohio SMART BRFSS Data
================================================

Import the Ohio data from .csv
------------------------------

``` r
smart_2017_ohio_raw <- 
    read_csv("data/smart_2017_ohio_raw.csv") %>%
    clean_names()
```

    Parsed with column specification:
    cols(
      .default = col_double(),
      callbckz = col_logical(),
      namtribe = col_logical(),
      namothr = col_logical(),
      mmsaname = col_character()
    )

    See spec(...) for full column specifications.

Identify Useful Variables, and restrict to interview completers
---------------------------------------------------------------

We're going to select a total of 48 variables from the SMART BRFSS material, and we're going to restrict our work to those subjects with `dispcode` = 1100, indicating that they completed the interview.

``` r
smart_2017_oh_working <- smart_2017_ohio_raw %>%
    filter(dispcode == 1100) %>%
    mutate(subject = paste0(mmsa, seqno)) %>%
    select(subject, seqno, mmsa, mmsaname, dispcode, 
           genhlth, physhlth, menthlth, 
           hlthpln1, persdoc2, medcost, checkup1,
           exerany2, cvdinfr4, cvdcrhd4,
           cvdstrk3, asthma3, chcscncr,
           chcocncr, chccopd1, havarth3, addepev2,
           chckidny, diabete3, 
           ageg5yr, sex, marital, educa,
           renthom1, veteran3,
           employ1, children, income2, internet,
           wtkg3, height3, deaf, blind,
           decide, diffwalk, 
           smoke100, ecigaret, alcday5, avedrnk2,
           flushot6, seatbelt)
```

In these data, we have the following identifying variables, each of which displays complete data:

|    Variable| Description                                        |
|-----------:|----------------------------------------------------|
|   `subject`| unique subject code (from `seqno` and `mmsa`)      |
|     `seqno`| subject code within an MMSA                        |
|      `mmsa`| MMSA number for this subject (6 options)           |
|  `mmsaname`| MMSA name for this subject (6 options)             |
|  `dispcode`| 1100 for everyone indicating a completed interview |

``` r
nrow(smart_2017_oh_working)
```

    [1] 6277

``` r
n_distinct(smart_2017_oh_working$subject)
```

    [1] 6277

``` r
smart_2017_oh_working %>% count(mmsa, mmsaname)
```

    # A tibble: 6 x 3
       mmsa mmsaname                                                        n
      <dbl> <chr>                                                       <int>
    1 17140 Cincinnati, OH-KY-IN, Metropolitan Statistical Area          1460
    2 17460 Cleveland-Elyria, OH, Metropolitan Statistical Area           966
    3 18140 Columbus, OH, Metropolitan Statistical Area                  1681
    4 19380 Dayton, OH, Metropolitan Statistical Area                     497
    5 26580 Huntington-Ashland, WV-KY-OH, Metropolitan Statistical Area  1020
    6 45780 Toledo, OH, Metropolitan Statistical Area                     653

Everything else is what we're interested in now.

Data Cleaning
=============

Recoding Health Status variables
--------------------------------

### `genhlth` to `genhealth`

`genhlth`, the General Health variable, is the response to "Would you say that in general your health is ..."

-   1 = Excellent
-   2 = Very good
-   3 = Good
-   4 = Fair
-   5 = Poor
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

To clean up the `GENHLTH` data into a new variable called `genhealth` we'll need to

-   convince R that the 7 and 9 values are in fact best interpreted as `NA`,
-   and perhaps change the variable to a factor and incorporate the names into the levels.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(genhealth = fct_recode(factor(genhlth), 
                                "1_Excellent" = "1",
                                "2_VeryGood" = "2",
                                "3_Good" = "3",
                                "4_Fair" = "4", 
                                "5_Poor" = "5",
                                NULL = "7",
                                NULL = "9"))

smart_2017_oh_working %>% count(genhlth, genhealth)
```

    # A tibble: 7 x 3
      genhlth genhealth       n
        <dbl> <fct>       <int>
    1       1 1_Excellent   872
    2       2 2_VeryGood   2046
    3       3 3_Good       1987
    4       4 4_Fair        991
    5       5 5_Poor        370
    6       7 <NA>            7
    7       9 <NA>            4

### `physhlth` to `physhealth`

`physhlth` is the Number of Days Physical Health Not Good, which is the response to "Now thinking about your physical health, which includes physical illness and injury, for how many days during the past 30 days was your physical health not good?"

-   Values of 1-30 are numeric and reasonable.
-   A value of 88 indicates "none" and should be recoded to 0.
-   77 is the code for Don't know/Not sure
-   99 is the code for Refused
-   BLANK indicates Not asked or missing, and R recognizes this as `NA` properly.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(physhealth = physhlth,
           physhealth = replace(physhealth, physhealth %in% c(77, 99), NA),
           physhealth = replace(physhealth, physhealth == 88, 0))

smart_2017_oh_working %>% count(physhlth, physhealth) %>% tail()
```

    # A tibble: 6 x 3
      physhlth physhealth     n
         <dbl>      <dbl> <int>
    1       28         28    10
    2       29         29    11
    3       30         30   585
    4       77         NA   106
    5       88          0  3678
    6       99         NA    12

Note that we present the `tail` of the counts in this case so we can see what happens to the key values (77, 88, 99) of our original variable `physhlth`.

### `menthlth` to `menthealth`

`menthlth` is the Number of Days Mental Health Not Good, which is the response to "Now thinking about your mental health, which includes stress, depression, and problems with emotions, for how many days during the past 30 days was your mental health not good?"

This requires the same cleaning as `physhlth` did.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(menthealth = menthlth,
           menthealth = replace(menthealth, menthealth %in% c(77, 99), NA),
           menthealth = replace(menthealth, menthealth == 88, 0))

smart_2017_oh_working %>% count(menthlth, menthealth) %>% tail()
```

    # A tibble: 6 x 3
      menthlth menthealth     n
         <dbl>      <dbl> <int>
    1       28         28     6
    2       29         29     7
    3       30         30   408
    4       77         NA    72
    5       88          0  4082
    6       99         NA    24

Recoding Health Care Access variables
-------------------------------------

### `hlthpln1` to `healthplan`

`hlthpln1`, the Have any health care coverage variable, is the response to "Do you have any kind of health care coverage, including health insurance, prepaid plans such as HMOs, or government plans such as Medicare, or Indian Health Service?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused

To clean up the `hlthpln1` data into a new variable called `healthplan` we'll
- convince R that the 7 and 9 values are in fact best interpreted as `NA`, - and turn it into an indicator variable, e.g., we will leave the variable as numeric, but change the values to 1 = Yes and 0 = No.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(healthplan = hlthpln1,
           healthplan = replace(healthplan, healthplan %in% c(7, 9), NA),
           healthplan = replace(healthplan, healthplan == 2, 0))

smart_2017_oh_working %>% count(hlthpln1, healthplan)
```

    # A tibble: 4 x 3
      hlthpln1 healthplan     n
         <dbl>      <dbl> <int>
    1        1          1  5962
    2        2          0   300
    3        7         NA     8
    4        9         NA     7

### `persdoc2` and its cleanup to `hasdoc` and to `numdocs2`

`persdoc2`, the Multiple Health Care Professionals variable, is the response to "Do you have one person you think of as your personal doctor or health care provider?" where if the response is "No", the survey then asks "Is there more than one or is there no person who you think of as your personal doctor or health care provider?"

-   1 = Yes, only one
-   2 = More than one
-   3 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

Let's build two variables here. We'll create a `hasdoc` variable which is simply Yes or No, and a factor variable called `numdocs2` which keeps the first three levels in place.

To clean up the `persdoc2` data into a new variable called `hasdoc` we'll
- convince R that the 7 and 9 values are in fact best interpreted as `NA`, - and turn it into an indicator variable, e.g., we will leave the variable as numeric, but change the values to 1 = Yes and 0 = No, so that the original 1 and 2 become 1, and the original 3 becomes 0.

To clean up the `persdoc2` data into a new variable called `numdocs2` we'll - convince R that the 7 and 9 values are in fact best interpreted as `NA`, - relabel options 1, 2 and 3 while turning the variable into a factor.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(hasdoc = persdoc2,
           hasdoc = replace(hasdoc, hasdoc %in% c(7, 9), NA),
           hasdoc = replace(hasdoc, hasdoc %in% c(1, 2), 1),
           hasdoc = replace(hasdoc, hasdoc == 3, 0)) %>%
    mutate(numdocs2 = fct_recode(factor(persdoc2),
                                 "1_One" = "1",
                                 "2_MoreThanOne" = "2",
                                 "3_Zero" = "3",
                                 NULL = "7",
                                 NULL = "9"))

smart_2017_oh_working %>% count(persdoc2, hasdoc, numdocs2)
```

    # A tibble: 5 x 4
      persdoc2 hasdoc numdocs2          n
         <dbl>  <dbl> <fct>         <int>
    1        1      1 1_One          4998
    2        2      1 2_MoreThanOne   534
    3        3      0 3_Zero          732
    4        7     NA <NA>             12
    5        9     NA <NA>              1

### `medcost` and its cleanup to `costprob`

`medcost`, the Could Not See Doctor Because of Cost variable, is the response to "Was there a time in the past 12 months when you needed to see a doctor but could not because of cost?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

This is just like `hlthpln1`.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(costprob = medcost,
           costprob = replace(costprob, costprob %in% c(7, 9), NA),
           costprob = replace(costprob, costprob == 2, 0))

smart_2017_oh_working %>% count(medcost, costprob)
```

    # A tibble: 4 x 3
      medcost costprob     n
        <dbl>    <dbl> <int>
    1       1        1   572
    2       2        0  5689
    3       7       NA    14
    4       9       NA     2

### `checkup1` to `checkup_last`

`checkup1`, the Length of time since last routine checkup variable, is the response to "About how long has it been since you last visited a doctor for a routine checkup? \[A routine checkup is a general physical exam, not an exam for a specific injury, illness, or condition.\]"

-   1 = Within past year (anytime less than 12 months ago)
-   2 = Within past 2 years (1 year but less than 2 years ago)
-   3 = Within past 5 years (2 years but less than 5 years ago)
-   4 = 5 or more years ago
-   7 = Don't know/Not sure
-   8 = Never
-   9 = Refused
-   BLANK = Not asked or missing

To clean up the `checkup1` data into a new variable called `check_last` we'll - convince R that the 7 and 9 values are in fact best interpreted as `NA`, - relabel options 1, 2, 3, 4 and 8 while turning the variable into a factor.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(check_last = fct_recode(factor(checkup1),
                                 "1_In-past-year" = "1",
                                 "2_1-to-2-years" = "2",
                                 "3_2-to-5-years" = "3",
                                 "4_5_plus_years" = "4",
                                 "8_Never" = "8",
                                 NULL = "7",
                                 NULL = "9"))

smart_2017_oh_working %>% count(checkup1, check_last)
```

    # A tibble: 7 x 3
      checkup1 check_last         n
         <dbl> <fct>          <int>
    1        1 1_In-past-year  4954
    2        2 2_1-to-2-years   591
    3        3 3_2-to-5-years   332
    4        4 4_5_plus_years   310
    5        7 <NA>              56
    6        8 8_Never           29
    7        9 <NA>               5

Exercise
--------

### `exerany2` into `exerany`

`exerany2`, the Exercise in Past 30 Days variable, is the response to "During the past month, other than your regular job, did you participate in any physical activities or exercises such as running, calisthenics, golf, gardening, or walking for exercise?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

This is just like `hlthpln1`.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(exerany = exerany2,
           exerany = replace(exerany, exerany %in% c(7, 9), NA),
           exerany = replace(exerany, exerany == 2, 0))

smart_2017_oh_working %>% count(exerany2, exerany)
```

    # A tibble: 4 x 3
      exerany2 exerany     n
         <dbl>   <dbl> <int>
    1        1       1  4318
    2        2       0  1946
    3        7      NA    10
    4        9      NA     3

Chronic Health Conditions
-------------------------

### Self-reported diagnosis history (10 items)

The next few variables describe whether or not the subject meets a particular standard, and are all coded in the raw data the same way:

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

and we'll recode them all to 1 = Yes, 0 = No, otherwise NA, as we've done previously.

The questions are all started with "Has a doctor, nurse, or other health professional ever told you that you had any of the following? For each, tell me Yes, No, or you're Not sure."

<table style="width:86%;">
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="61%" />
</colgroup>
<thead>
<tr class="header">
<th>Original</th>
<th>Revised</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>cvdinfr4</code></td>
<td><code>hx_mi</code></td>
<td>(Ever told) you had a heart attack, also called a myocardial infarction?</td>
</tr>
<tr class="even">
<td><code>cvdcrhd4</code></td>
<td><code>hx_chd</code></td>
<td>(Ever told) you had angina or coronary heart disease?</td>
</tr>
<tr class="odd">
<td><code>cvdstrk3</code></td>
<td><code>hx_stroke</code></td>
<td>(Ever told) you had a stroke?</td>
</tr>
<tr class="even">
<td><code>asthma3</code></td>
<td><code>hx_asthma</code></td>
<td>(Ever told) you had asthma?</td>
</tr>
<tr class="odd">
<td><code>chcscncr</code></td>
<td><code>hx_skinc</code></td>
<td>(Ever told) you had skin cancer?</td>
</tr>
<tr class="even">
<td><code>chcocncr</code></td>
<td><code>hx_otherc</code></td>
<td>(Ever told) you had any other types of cancer?</td>
</tr>
<tr class="odd">
<td><code>chccopd1</code></td>
<td><code>hx_copd</code></td>
<td>(Ever told) you have Chronic Obstructive Pulmonary Disease or COPD, emphysema or chronic bronchitis?</td>
</tr>
<tr class="even">
<td><code>havarth3</code></td>
<td><code>hx.arthr</code></td>
<td>(Ever told) you have some form of arthritis, rheumatoid arthritis, gout, lupus, or fibromyalgia? (Arthritis diagnoses include: rheumatism, polymyalgia rheumatica; osteoarthritis (not osteporosis); tendonitis, bursitis, bunion, tennis elbow; carpal tunnel syndrome, tarsal tunnel syndrome; joint infection, etc.)</td>
</tr>
<tr class="odd">
<td><code>addepev2</code></td>
<td><code>hx.depress</code></td>
<td>(Ever told) you that you have a depressive disorder, including depression, major depression, dysthymia, or minor depression?</td>
</tr>
<tr class="even">
<td><code>chckidny</code></td>
<td><code>hx.kidney</code></td>
<td>(Ever told) you have kidney disease? Do NOT include kidney stones, bladder infection or incontinence.</td>
</tr>
</tbody>
</table>

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(hx_mi = cvdinfr4,
           hx_mi = replace(hx_mi, hx_mi %in% c(7, 9), NA),
           hx_mi = replace(hx_mi, hx_mi == 2, 0),
           hx_chd = cvdcrhd4,
           hx_chd = replace(hx_chd, hx_chd %in% c(7, 9), NA),
           hx_chd = replace(hx_chd, hx_chd == 2, 0),
           hx_stroke = cvdstrk3, 
           hx_stroke = replace(hx_stroke, hx_stroke %in% c(7, 9), NA),
           hx_stroke = replace(hx_stroke, hx_stroke == 2, 0),
           hx_asthma = asthma3,
           hx_asthma = replace(hx_asthma, hx_asthma %in% c(7, 9), NA),
           hx_asthma = replace(hx_asthma, hx_asthma == 2, 0),
           hx_skinc = chcscncr,
           hx_skinc = replace(hx_skinc, hx_skinc %in% c(7, 9), NA),
           hx_skinc = replace(hx_skinc, hx_skinc == 2, 0),
           hx_otherc = chcocncr,
           hx_otherc = replace(hx_otherc, hx_otherc %in% c(7, 9), NA),
           hx_otherc = replace(hx_otherc, hx_otherc == 2, 0),
           hx_copd = chccopd1,
           hx_copd = replace(hx_copd, hx_copd %in% c(7, 9), NA),
           hx_copd = replace(hx_copd, hx_copd == 2, 0),
           hx_arthr = havarth3,
           hx_arthr = replace(hx_arthr, hx_arthr %in% c(7, 9), NA),
           hx_arthr = replace(hx_arthr, hx_arthr == 2, 0),
           hx_depress = addepev2,
           hx_depress = replace(hx_depress, hx_depress %in% c(7, 9), NA),
           hx_depress = replace(hx_depress, hx_depress == 2, 0),
           hx_kidney = chckidny,
           hx_kidney = replace(hx_kidney, hx_kidney %in% c(7, 9), NA),
           hx_kidney = replace(hx_kidney, hx_kidney == 2, 0))
```

### Create count of `diagnoses`

We have 10 different diagnoses above that we could count to give an overall measure of burden for each subject.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(diagnoses = hx_mi + hx_chd + hx_stroke +
               hx_asthma + hx_skinc + hx_otherc + hx_copd +
               hx_arthr + hx_depress + hx_kidney)

smart_2017_oh_working %>% count(diagnoses)
```

    # A tibble: 10 x 2
       diagnoses     n
           <dbl> <int>
     1         0  2181
     2         1  1734
     3         2  1096
     4         3   576
     5         4   277
     6         5   109
     7         6    48
     8         7    13
     9         8     5
    10        NA   238

### `diabete3` to `hx_diabetes` and `diabetes3`

`diabete3`, the (Ever told) you have diabetes variable, is the response to "(Ever told) you have diabetes (If Yes and respondent is female, ask Was this only when you were pregnant?. If Respondent says pre-diabetes or borderline diabetes, use response code 4.)"

-   1 = Yes
-   2 = Yes, but female told only during pregnancy
-   3 = No
-   4 = No, pre-diabetes or borderline diabetes
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

I'll create one variable called `hx_diabetes` which is 1 if `diabete3` = 1, and 0 otherwise, with appropriate NAs, like our other variables. Then I'll create `diabetes3` to include all of this information in a factor, but again recode the missing values properly.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(hx_diabetes = diabete3,
           hx_diabetes = replace(hx_diabetes, hx_diabetes %in% c(7, 9), NA),
           hx_diabetes = replace(hx_diabetes, hx_diabetes %in% 2:4, 0),
           diabetes3 = fct_recode(factor(diabete3),
                                  "Diabetes" = "1",
                                  "Pregnancy-Induced" = "2",
                                  "No-Diabetes" = "3",
                                  "Pre-Diabetes" = "4",
                                  NULL = "7",
                                  NULL = "9"))

smart_2017_oh_working %>% count(diabete3, hx_diabetes, diabetes3)
```

    # A tibble: 6 x 4
      diabete3 hx_diabetes diabetes3             n
         <dbl>       <dbl> <fct>             <int>
    1        1           1 Diabetes            979
    2        2           0 Pregnancy-Induced    54
    3        3           0 No-Diabetes        5109
    4        4           0 Pre-Diabetes        122
    5        7          NA <NA>                 11
    6        9          NA <NA>                  2

Demographics
------------

### `ageg5yr` to `agegroup`

The `ageg5yr` variable is a calculated variable (by CDC) obtained from the subject's age. Since the `age` data are not available, we instead get these groupings, which we'll rearrange into the `agegroup` factor.

|  `ageg5yr`| Age range                      | `agegroup` |
|----------:|--------------------------------|------------|
|          1| 18 &lt;= AGE &lt;= 24          | 18-24      |
|          2| 25 &lt;= AGE &lt;= 29          | 25-29      |
|          3| 30 &lt;= AGE &lt;= 34          | 30-34      |
|          4| 35 &lt;= AGE &lt;= 39          | 35-39      |
|          5| 40 &lt;= AGE &lt;= 44          | 40-44      |
|          6| 45 &lt;= AGE &lt;= 49          | 45-49      |
|          7| 50 &lt;= AGE &lt;= 54          | 50-54      |
|          8| 55 &lt;= AGE &lt;= 59          | 55-59      |
|          9| 60 &lt;= AGE &lt;= 64          | 60-64      |
|         10| 65 &lt;= AGE &lt;= 69          | 65-69      |
|         11| 70 &lt;= AGE &lt;= 74          | 70-74      |
|         12| 75 &lt;= AGE &lt;= 79          | 75-79      |
|         13| AGE &gt;= 80                   | 80plus     |
|         14| Don't Know, Refused or Missing | NA         |

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(agegroup = fct_recode(factor(`ageg5yr`),
                                "18-24" = "1",
                                "25-29" = "2",
                                "30-34" = "3",
                                "35-39" = "4",
                                "40-44" = "5",
                                "45-49" = "6",
                                "50-54" = "7",
                                "55-59" = "8",
                                "60-64" = "9",
                                "65-69" = "10",
                                "70-74" = "11",
                                "75-79" = "12",
                                "80-96" = "13",
                                NULL = "14"))

smart_2017_oh_working %>% count(`ageg5yr`, agegroup)
```

    # A tibble: 14 x 3
       ageg5yr agegroup     n
         <dbl> <fct>    <int>
     1       1 18-24      332
     2       2 25-29      248
     3       3 30-34      295
     4       4 35-39      323
     5       5 40-44      347
     6       6 45-49      423
     7       7 50-54      527
     8       8 55-59      694
     9       9 60-64      743
    10      10 65-69      731
    11      11 70-74      612
    12      12 75-79      449
    13      13 80-96      510
    14      14 <NA>        43

### `sex` to `female`

The available levels of `sex` are:

-   1 = Male
-   2 = Female
-   9 = Refused

We'll recode that to `female` = 1 for Female, 0 Male, otherwise NA. Note the trick here is to subtract one from the coded `sex` to get the desired `female`, but this requires that we move 9 to NA, rather than 9.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(female = sex - 1,
           female = replace(female, female == 8, NA))

smart_2017_oh_working %>% count(sex, female)
```

    # A tibble: 2 x 3
        sex female     n
      <dbl>  <dbl> <int>
    1     1      0  2617
    2     2      1  3660

### `marital`, revised to `marital_status`

The available levels of `marital` are:

-   1 = Married
-   2 = Divorced
-   3 = Widowed
-   4 = Separated
-   5 = Never married
-   6 = A member of an unmarried couple
-   9 = Refused
-   BLANK = Not asked or missing

We'll just turn this into a factor, and move 9 to NA.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(marital_status = fct_recode(factor(marital),
                                "Married" = "1",
                                "Divorced" = "2",
                                "Widowed" = "3",
                                "Separated" = "4",
                                "Never_Married" = "5",
                                "Unmarried_Couple" = "6",
                                NULL = "9"))

smart_2017_oh_working %>% count(marital, marital_status)
```

    # A tibble: 7 x 3
      marital marital_status       n
        <dbl> <fct>            <int>
    1       1 Married           3133
    2       2 Divorced           969
    3       3 Widowed            865
    4       4 Separated          112
    5       5 Never_Married      996
    6       6 Unmarried_Couple   159
    7       9 <NA>                43

### `educa` recoded to `educgroup`

The available levels of `educa` (Education Level) are responses to: "What is the highest grade or year of school you completed?"

-   1 = Never attended school or only kindergarten
-   2 = Grades 1 through 8 (Elementary)
-   3 = Grades 9 through 11 (Some high school)
-   4 = Grade 12 or GED (High school graduate)
-   5 = College 1 year to 3 years (Some college or technical school)
-   6 = College 4 years or more (College graduate)
-   9 = Refused
-   BLANK = Not asked or missing

We'll just turn this into a factor, and move 9 to NA.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(educgroup = fct_recode(factor(educa),
                                "Kindergarten" = "1",
                                "Elementary" = "2",
                                "Some_HS" = "3",
                                "HS_Grad" = "4",
                                "Some_College" = "5",
                                "College_Grad" = "6",
                                NULL = "9"))

smart_2017_oh_working %>% count(educa, educgroup)
```

    # A tibble: 7 x 3
      educa educgroup        n
      <dbl> <fct>        <int>
    1     1 Kindergarten     3
    2     2 Elementary      95
    3     3 Some_HS        265
    4     4 HS_Grad       1873
    5     5 Some_College  1800
    6     6 College_Grad  2226
    7     9 <NA>            15

### `renthom1` recoded to `home_own`

The available levels of `renthom1` (Own or Rent Home) are responses to: "Do you own or rent your home? (Home is defined as the place where you live most of the time/the majority of the year.)"

-   1 = Own
-   2 = Rent
-   3 = Other Arrangement
-   7 = Don't know/Not Sure
-   9 = Refused
-   BLANK = Not asked or missing

We'll recode as `home_own` = 1 if they own their home, and 0 otherwise, and dealing with missingness properly.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(home_own = renthom1,
           home_own = replace(home_own, home_own %in% c(7,9), NA),
           home_own = replace(home_own, home_own %in% c(2,3), 0))

smart_2017_oh_working %>% count(renthom1, home_own)
```

    # A tibble: 5 x 3
      renthom1 home_own     n
         <dbl>    <dbl> <int>
    1        1        1  4558
    2        2        0  1413
    3        3        0   272
    4        7       NA    18
    5        9       NA    16

### `veteran3` and its cleanup to `veteran`

`veteran3`, the Are You A Veteran variable, is the response to "Have you ever served on active duty in the United States Armed Forces, either in the regular military or in a National Guard or military reserve unit? (Active duty does not include training for the Reserves or National Guard, but DOES include activation, for example, for the Persian Gulf War.)"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(veteran = veteran3,
           veteran = replace(veteran, veteran %in% c(7, 9), NA),
           veteran = replace(veteran, veteran == 2, 0))

smart_2017_oh_working %>% count(veteran3, veteran)
```

    # A tibble: 3 x 3
      veteran3 veteran     n
         <dbl>   <dbl> <int>
    1        1       1   806
    2        2       0  5468
    3        9      NA     3

### `employ1` and its cleanup to `employment`

`employ1`, the Employment Status variable, is the response to "Are you currently ... ?"

-   1 = Employed for wages
-   2 = Self-employed
-   3 = Out of work for 1 year or more
-   4 = Out of work for less than 1 year
-   5 = A homemaker
-   6 = A student
-   7 = Retired
-   8 = Unable to work
-   9 = Refused
-   BLANK = Not asked or missing

We'll just turn this into a factor, and move 9 to NA.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(employment = fct_recode(factor(employ1),
                                "Employed_for_wages" = "1",
                                "Self-employed" = "2",
                                "Outofwork_1yearormore" = "3",
                                "Outofwork_lt1year" = "4",
                                "Homemaker" = "5",
                                "Student" = "6",
                                "Retired" = "7",
                                "Unable_to_work" = "8",
                                NULL = "9"))

smart_2017_oh_working %>% count(employ1, employment)
```

    # A tibble: 9 x 3
      employ1 employment                n
        <dbl> <fct>                 <int>
    1       1 Employed_for_wages     2591
    2       2 Self-employed           382
    3       3 Outofwork_1yearormore   215
    4       4 Outofwork_lt1year       109
    5       5 Homemaker               340
    6       6 Student                 135
    7       7 Retired                1962
    8       8 Unable_to_work          524
    9       9 <NA>                     19

### `children` and its cleanup to `numkids`

`children`, the Number of Children in Household variable, is the response to "How many children less than 18 years of age live in your household?"

-   1-87 = legitimate responses
-   88 = None
-   99 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(numkids = children,
           numkids = replace(numkids, numkids == 99, NA),
           numkids = replace(numkids, numkids == 88, 0))

smart_2017_oh_working %>% count(children, numkids) %>% tail()
```

    # A tibble: 6 x 3
      children numkids     n
         <dbl>   <dbl> <int>
    1        5       5    17
    2        6       6     5
    3        7       7     4
    4        8       8     2
    5       88       0  4719
    6       99      NA    20

### `income2` to `incomegroup`

The available levels of `income2` (Income Level) are responses to: "Is your annual household income from all sources ..."

-   1 = Less than $10,000
-   2 = $10,000 to less than $15,000
-   3 = $15,000 to less than $20,000
-   4 = $20,000 to less than $25,000
-   5 = $25,000 to less than $35,000
-   6 = $35,000 to less than $50,000
-   7 = $50,000 to less than $75,000
-   8 = $75,000 or more
-   77 = Don't know/Not sure
-   99 = Refused
-   BLANK = Not asked or missing

We'll just turn this into a factor, and move 77 and 99 to NA.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(incomegroup = fct_recode(factor(`income2`),
                                "0-9K" = "1",
                                "10-14K" = "2",
                                "15-19K" = "3",
                                "20-24K" = "4",
                                "25-34K" = "5",
                                "35-49K" = "6",
                                "50-74K" = "7",
                                "75K+" = "8",
                                NULL = "77",
                                NULL = "99"))

smart_2017_oh_working %>% count(`income2`, incomegroup)
```

    # A tibble: 10 x 3
       income2 incomegroup     n
         <dbl> <fct>       <int>
     1       1 0-9K          224
     2       2 10-14K        262
     3       3 15-19K        393
     4       4 20-24K        505
     5       5 25-34K        590
     6       6 35-49K        804
     7       7 50-74K        814
     8       8 75K+         1650
     9      77 <NA>          508
    10      99 <NA>          527

### `internet` and its cleanup to `internet30`

`internet`, the Internet use in the past 30 days variable, is the response to "Have you used the internet in the past 30 days?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(internet30 = internet,
           internet30 = replace(internet30, internet30 %in% c(7, 9), NA),
           internet30 = replace(internet30, internet30 == 2, 0))

smart_2017_oh_working %>% count(internet, internet30)
```

    # A tibble: 4 x 3
      internet internet30     n
         <dbl>      <dbl> <int>
    1        1          1  5118
    2        2          0  1145
    3        7         NA     9
    4        9         NA     5

Size
----

### `wtkg3` is `weight_kg`

`wtkg3` is computed by CDC, as the respondent's weight in kilograms with two implied decimal places. We calculate the actual weight in kg, with the following:

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(weight_kg = wtkg3/100)

smart_2017_oh_working %>% count(wtkg3, weight_kg)# %>% tail()
```

    # A tibble: 269 x 3
       wtkg3 weight_kg     n
       <dbl>     <dbl> <int>
     1  3175      31.8     1
     2  3402      34.0     1
     3  3629      36.3     3
     4  3765      37.6     1
     5  3856      38.6     2
     6  3901      39.0     2
     7  3992      39.9     2
     8  4037      40.4     2
     9  4082      40.8     3
    10  4173      41.7     1
    # ... with 259 more rows

### `height3` is replaced with `height_m`

`height3` is strangely gathered to allow people to specify their height in either feet and inches or in meters and centimeters.

-   200-711 indicates height in feet (first digit) and inches (second two digits)
-   9000 - 9998 indicates height in meters (second digit) and centimeters (last two digits)
-   7777 = Don't know/Not sure
-   9999 = Refused

Note that there is one impossible value of 575 in the data set. We'll make that an NA, and we'll also make NA any heights below 3 feet, or above 2.24 meters. Specifically, we calculate the actual height in meters, with the following:

``` r
smart_2017_oh_working <- smart_2017_oh_working %>%
    mutate(height_m = case_when(
        height3 >= 300 & height3 <= 511 ~ round((12*floor(height3/100) + (height3 - 100*floor(height3/100)))*0.0254,2),
        height3 >= 600 & height3 <= 711 ~ round((12*floor(height3/100) + (height3 - 100*floor(height3/100)))*0.0254,2),
        height3 >= 9000 & height3 <= 9224 ~ ((height3 - 9000)/100)))

smart_2017_oh_working %>% count(height3, height_m) # %>% tail()
```

    # A tibble: 30 x 3
       height3 height_m     n
         <dbl>    <dbl> <int>
     1     405     1.35     2
     2     407     1.4      1
     3     408     1.42     7
     4     409     1.45    15
     5     410     1.47    19
     6     411     1.5     95
     7     500     1.52   215
     8     501     1.55   211
     9     502     1.57   434
    10     503     1.6    514
    # ... with 20 more rows

### `bmi` is calculated from `height_m` and `weight_kg`

We'll calculate body-mass index from height and weight.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(bmi = round(weight_kg/(height_m)^2,2))

smart_2017_oh_working %>% count(height_m, weight_kg, bmi)# %>% tail()
```

    # A tibble: 1,700 x 4
       height_m weight_kg   bmi     n
          <dbl>     <dbl> <dbl> <int>
     1     1.35      39.0  21.4     1
     2     1.35      52.2  28.6     1
     3     1.4       89.8  45.8     1
     4     1.42      31.8  15.8     1
     5     1.42      45.4  22.5     1
     6     1.42      55.8  27.7     1
     7     1.42      58.5  29.0     1
     8     1.42      59.9  29.7     1
     9     1.42      60.8  30.1     1
    10     1.42      73.5  36.4     1
    # ... with 1,690 more rows

### `bmigroup` is calculated from `bmi`

We'll then divide the respondents into adult BMI categories, in the usual way.

-   BMI &lt; 18.5 indicates underweight
-   BMI from 18.5 up to 25 indicates normal weight
-   BMI from 25 up to 30 indicates overweight
-   BMI of 30 and higher indicates obesity

``` r
smart_2017_oh_working <- smart_2017_oh_working %>%
    mutate(bmigroup = factor(cut2(as.numeric(bmi), 
                           cuts = c(18.5, 25.0, 30.0))))

smart_2017_oh_working %>% count(bmigroup)
```

    # A tibble: 5 x 2
      bmigroup        n
      <fct>       <int>
    1 [13.3,18.5)   103
    2 [18.5,25.0)  1701
    3 [25.0,30.0)  2104
    4 [30.0,75.5]  2046
    5 <NA>          323

### `deaf` and its cleanup to `deaf`

`deaf`, the Are you deaf or do you have serious difficulty hearing variable, is the response to "Are you deaf or do you have serious difficulty hearing?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(deaf_original = deaf,
           deaf = replace(deaf, deaf %in% c(7, 9), NA),
           deaf = replace(deaf, deaf == 2, 0))

smart_2017_oh_working %>% count(deaf_original, deaf)
```

    # A tibble: 4 x 3
      deaf_original  deaf     n
              <dbl> <dbl> <int>
    1             1     1   625
    2             2     0  5636
    3             7    NA    13
    4             9    NA     3

### `blind` and its cleanup to `blind`

`blind`, the Blind or Difficulty seeing variable, is the response to "Are you blind or do you have serious difficulty seeing, even when wearing glasses?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(blind_original = blind,
           blind = replace(blind, blind %in% c(7, 9), NA),
           blind = replace(blind, blind == 2, 0))

smart_2017_oh_working %>% count(blind_original, blind)
```

    # A tibble: 4 x 3
      blind_original blind     n
               <dbl> <dbl> <int>
    1              1     1   369
    2              2     0  5894
    3              7    NA    13
    4              9    NA     1

### `decide` and its cleanup to `decide`

`decide`, the Difficulty Concentrating or Remembering variable, is the response to "Because of a physical, mental, or emotional condition, do you have serious difficulty concentrating, remembering, or making decisions?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(decide_original = decide,
           decide = replace(decide, decide %in% c(7, 9), NA),
           decide = replace(decide, decide == 2, 0))

smart_2017_oh_working %>% count(decide_original, decide)
```

    # A tibble: 4 x 3
      decide_original decide     n
                <dbl>  <dbl> <int>
    1               1      1   755
    2               2      0  5493
    3               7     NA    28
    4               9     NA     1

### `diffwalk` and its cleanup to `diffwalk`

`diffwalk`, the Difficulty Walking or Climbing Stairs variable, is the response to "Do you have serious difficulty walking or climbing stairs?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(diffwalk_original = diffwalk,
           diffwalk = replace(diffwalk, diffwalk %in% c(7, 9), NA),
           diffwalk = replace(diffwalk, diffwalk == 2, 0))

smart_2017_oh_working %>% count(diffwalk_original, diffwalk)
```

    # A tibble: 4 x 3
      diffwalk_original diffwalk     n
                  <dbl>    <dbl> <int>
    1                 1        1  1331
    2                 2        0  4928
    3                 7       NA    16
    4                 9       NA     2

Health Behaviors
----------------

### `smoke100` and its cleanup to `smoke_100`

`smoke100`, the Smoked at Least 100 Cigarettes variable, is the response to "Have you smoked at least 100 cigarettes in your entire life? \[Note: 5 packs = 100 cigarettes\]"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(smoke_100 = smoke100,
           smoke_100 = replace(smoke_100, smoke_100 %in% c(7, 9), NA),
           smoke_100 = replace(smoke_100, smoke_100 == 2, 0))

smart_2017_oh_working %>% count(smoke100, smoke_100)
```

    # A tibble: 4 x 3
      smoke100 smoke_100     n
         <dbl>     <dbl> <int>
    1        1         1  2910
    2        2         0  3343
    3        7        NA    23
    4        9        NA     1

### `ecigaret` and its cleanup to `ecig_ever`

`ecigaret`, the Ever used an e-cigarette variable, is the response to "Have you ever used an e-cigarette or other electronic vaping product, even just one time, in your entire life?"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(ecig_ever = ecigaret,
           ecig_ever = replace(ecig_ever, ecig_ever %in% c(7, 9), NA),
           ecig_ever = replace(ecig_ever, ecig_ever == 2, 0))

smart_2017_oh_working %>% count(ecigaret, ecig_ever)
```

    # A tibble: 4 x 3
      ecigaret ecig_ever     n
         <dbl>     <dbl> <int>
    1        1         1  1158
    2        2         0  5110
    3        7        NA     7
    4        9        NA     2

### `alcday5` and its cleanup to `alcdays`

`alcday5`, the Days in past 30 had alcoholic beverage variable, is the response to "During the past 30 days, how many days per week or per month did you have at least one drink of any alcoholic beverage such as beer, wine, a malt beverage or liquor?"

-   101-107 = \# of days per week (101 = 1 day per week, 107 = 7 days per week)
-   201-230 = \# of days in past 30 days (201 = 1 day in last 30, 230 = 30 days in last 30)
-   777 = Don't know/Not sure
-   888 = No drinks in past 30 days
-   999 = Refused
-   BLANK = Not asked or Missing

We're going to convert this to a single numeric value. Answers in days per week (in the past 7 days) will be converted (after rounding) to days in the past 30. This is a little bit of a mess, really, but we can do it.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(alcdays = as.numeric(alcday5)) %>%
    mutate(alcdays = replace(alcdays, alcdays == 888, 0),
           alcdays = replace(alcdays, alcdays %in% c(777, 999), NA)) %>%
    mutate(alcdays = case_when(alcday5 > 199 & alcday5 < 231 ~ alcday5 - 200,
                               alcday5 > 100 & alcday5 < 108 ~ round((alcday5 - 100)*30/7,0),
                               TRUE ~ alcdays))

smart_2017_oh_working %>% count(alcday5, alcdays)
```

    # A tibble: 38 x 3
       alcday5 alcdays     n
         <dbl>   <dbl> <int>
     1     101       4   226
     2     102       9   172
     3     103      13   124
     4     104      17    65
     5     105      21    50
     6     106      26    15
     7     107      30    98
     8     201       1   547
     9     202       2   382
    10     203       3   201
    # ... with 28 more rows

### `avedrnk2` and its cleanup to `avgdrinks`

`avedrnk2`, the Avg alcoholic drinks per day in past 30 variable, is the response to "One drink is equivalent to a 12-ounce beer, a 5-ounce glass of wine, or a drink with one shot of liquor. During the past 30 days, on the days when you drank, about how many drinks did you drink on the average? (A 40 ounce beer would count as 3 drinks, or a cocktail drink with 2 shots would count as 2 drinks.)"

-   1-76 = \# of drinks per day
-   77 = Don't know/Not sure
-   99 = Refused
-   BLANK = Not asked or Missing (always happens when alcday5 = 777, 888 or 999)

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(avgdrinks = avedrnk2,
           avgdrinks = replace(avgdrinks, avgdrinks > 76, NA))

smart_2017_oh_working %>% count(avedrnk2, avgdrinks) %>% tail()
```

    # A tibble: 6 x 3
      avedrnk2 avgdrinks     n
         <dbl>     <dbl> <int>
    1       36        36     1
    2       60        60     2
    3       76        76     1
    4       77        NA    40
    5       99        NA     3
    6       NA        NA  3203

### `flushot6` to `flushot`

`flushot6`, the Flu Vaccination variable, is the response to "During the past 12 months, have you had either a flu shot or a flu vaccine that was sprayed in your nose? (A new flu shot came out in 2011 that injects vaccine into the skin with a very small needle. It is called Fluzone Intradermal vaccine. This is also considered a flu shot.)"

-   1 = Yes
-   2 = No
-   7 = Don't know/Not sure
-   9 = Refused
-   BLANK = Not asked or missing

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(flushot = flushot6,
           flushot = replace(flushot, flushot %in% c(7, 9), NA),
           flushot = replace(flushot, flushot == 2, 0))

smart_2017_oh_working %>% count(flushot6, flushot)
```

    # A tibble: 4 x 3
      flushot6 flushot     n
         <dbl>   <dbl> <int>
    1        1       1  3200
    2        2       0  3049
    3        7      NA    25
    4        9      NA     3

### `seatbelt` to `seatbelt_always`

`seatbelt`, the Seatbelt use variable, is the response to "How often do you use seat belts when you drive or ride in a car? Would you say..."

-   1 = Always
-   2 = Nearly always
-   3 = Sometimes
-   4 = Seldom
-   5 = Never
-   7 = Don't know/Not sure
-   8 = Never drive or ride in a car
-   9 = Refused
-   BLANK = Not asked or missing

We'll recode to an indicator variable (Always vs. Not Always) and we'll regard options 7-9 as missing.

``` r
smart_2017_oh_working <- smart_2017_oh_working %>% 
    mutate(seatbelt_always = seatbelt,
           seatbelt_always = fct_recode(factor(seatbelt_always),
                                "Yes" = "1",
                                "No" = "2",
                                "No" = "3",
                                "No" = "4",
                                "No" = "5",
                                NULL = "7",
                                NULL = "8",
                                NULL = "9"))

smart_2017_oh_working %>% count(seatbelt, seatbelt_always)
```

    # A tibble: 8 x 3
      seatbelt seatbelt_always     n
         <dbl> <fct>           <int>
    1        1 Yes              5512
    2        2 No                369
    3        3 No                169
    4        4 No                 75
    5        5 No                126
    6        7 <NA>                6
    7        8 <NA>               18
    8        9 <NA>                2

Create clean files for Ohio and Cleveland in 2017
=================================================

``` r
smart_2017_oh <- smart_2017_oh_working %>%
    select(subject, seqno, mmsa, mmsaname, dispcode,
           genhealth, physhealth, menthealth, healthplan,
           hasdoc, numdocs2, costprob, check_last, exerany, 
           hx_mi, hx_chd, hx_stroke, hx_asthma, hx_skinc, 
           hx_otherc, hx_copd, hx_arthr, hx_depress, 
           hx_kidney, diagnoses, hx_diabetes, diabetes3, 
           agegroup, female, marital_status, educgroup, 
           home_own, veteran, employment, numkids, 
           incomegroup, internet30, weight_kg, height_m, 
           bmi, bmigroup, deaf, blind, decide, diffwalk, 
           smoke_100, ecig_ever, alcdays, avgdrinks, flushot, 
           seatbelt_always)

smart_2017_cle <- smart_2017_oh %>% 
    filter(mmsa == 17460)
```

Save as RDS objects
===================

``` r
saveRDS(smart_2017_oh, file = "data/smart_2017_oh.rds")
saveRDS(smart_2017_cle, file = "data/smart_2017_cle.rds")
```
