# 432 Spring 2019 Class 03: 2019-01-29

- Professor Love's Slides are now available: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class03/432_2019_slides03.pdf), or [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class03/432_2019_slides03.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

# IMPACT OF THE [COLD WEATHER CLOSING OF CWRU](https://thedaily.case.edu/university-close-tonight-thursday-7-p-m-extreme-cold/)

- CWRU is closed from 7 PM on 2019-01-29 through 7 PM on 2019-01-31 [due to the extreme cold](https://thedaily.case.edu/university-close-tonight-thursday-7-p-m-extreme-cold/).
- Class 04 is thus postponed from Thursday 2019-01-31 to Tuesday 2019-02-04, and [our Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md) now reflects this change.
- The [Minute Paper after Class 03](http://bit.ly/432-2019-minute03) is still due on Wednesday 2019-01-31 at 2 PM.
- [Homework 1](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due this Friday (2019-02-01) at 2 PM.
- I expect [Homework 2](https://github.com/THOMASELOVE/2019-432/tree/master/homework) will also still be due on 2019-02-08, but I may change my mind on that. If so, I will push it back, not forward, and you'll know by the time we meet for Class 04 next Tuesday.

## Where are we in the Course Notes?

- The Course Notes Chapters on [Analysis of Variance](https://thomaselove.github.io/2019-432-book/analysis-of-variance.html) and [Analysis of Covariance](https://thomaselove.github.io/2019-432-book/analysis-of-covariance.html) are definitely worth your time now. There, I discuss several things that won't make it into the slides.
- Last time, we worked with the [SMART BRFSS 2017](https://github.com/THOMASELOVE/2019-432/tree/master/data-and-code/smart_2017) data, and that's coming again for the next few classes.

## Upcoming Deliverables

- There is a [Minute Paper after Class 03](http://bit.ly/432-2019-minute03) due Wednesday (2019-01-30) at 2 PM. Find it at http://bit.ly/432-2019-minute03. Remember that you need to log into Google via CWRU to see the form.
- [Homework 1](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due this Friday (2019-02-01) at 2 PM.
    - After today's class, you should be able to do all four questions.
    - **Note**: In the initially posted `hbp330.csv` data file for HW1 (also HWs 2 and 3), a patient was listed with a negative value of `hsgrad` and another with 0. We have corrected those `hsgrad` (and also `income`) values. While the changes should not change your response to any HW 1 questions, please get and use the corrected data anyway, so that HW2 and HW3 work out smoothly.
        - The corrected `hbp330.csv` data set appeared on 2019-01-25, and has no negative values at all and no zero values except for the indicator variables. 
        - Get the corrected data set everywhere you got the original one, including [here](https://raw.githubusercontent.com/THOMASELOVE/2019-432/master/data-and-code/hbp330.csv), or [here](https://raw.githubusercontent.com/THOMASELOVE/2019-432/master/homework/homework1/data/hbp330.csv), or [here](https://raw.githubusercontent.com/THOMASELOVE/2019-432/master/homework/homework2/data/hbp330.csv), or [here](https://raw.githubusercontent.com/THOMASELOVE/2019-432/master/homework/homework3/data/hbp330.csv). 
- [Homework 2](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due the following Friday 2019-02-08, also at 2 PM.
    - Dr. Love recently added a sentence to Task 2 in Homework 2, just to give you a push in the right direction.
    - Beginning with Homework 2 (although you're welcome also to add it to Homework 1) we're asking you to conclude your assignment by calling a function to show the session information. This may help you (and us) troubleshoot problems. See the Homework 2 instructions (bottom of the homework) for details.
- [Project 1 Proposal](https://github.com/THOMASELOVE/2019-432/tree/master/projects) is due 2019-02-15 at 2 PM. 
    - The hardest part is identifying an appropriate data set. Any questions at this point?

## Looking for Project 1 Data?

- Charles Ornstein at ProPublica has a tipsheet on publicly available health care data. He [tweeted about it here](https://twitter.com/charlesornstein/status/1089710435266379776), and the most recent update (it's a Google Doc) [from January 2019 is here](https://docs.google.com/document/d/105mz23CgAnEgNZ12tWmJhzc8tjFtrQ0oUTZIgfV87gU/edit). Perhaps this may be of some help to you, although it's not expressly designed for things like your project.
- Read and heed the [Project 1 requirements](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) especially regarding sample size, number of variables, types of variables, and ability to share with the entire universe.

## Need Help with the Homework, Software or Anything Else?

- TA office hours are Monday-Friday from 11:30 AM - 12:45 PM, and on Tuesday and Thursday from 2:30 - 3:45 PM. 
- You can also find us, at any time, at `431-help` at `case dot edu`.

## What if R gives me a strange message?

Sometimes, especially when things update, you get some unusual messages, or things that worked yesterday don't work today. Dr. Love's usual five-step approach is:

1. Read the error message closely and see if it helps you understand the problem.
2. If it's about a function that cannot be found, be sure you're loading the relevant package.
3. Try shutting down and re-opening R Studio.
4. Try Google-ing the error message.
5. Try updating your packages in R Studio.

## R Studio Cheatsheets

Some of the most popular Cheat Sheets can be opened from the Help menu R Studio. For the complete list, visit https://www.rstudio.com/resources/cheatsheets/, and there's a service there where you can sign up to receive email updates. I look at one or more of these cheatsheets at least 2-3 times a week.

## Tweet of the Day / R Tip of the Day is from [@tjmahr](https://twitter.com/tjmahr/status/1089373127153459200?s=11) scales::pvalue() !

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class03/figures/mahr_tw.PNG)

- `scales` package is installed as part of the tidyverse. Check out `pvalue` in the Help tab in the Files pane in R Studio.
- Check out the [scales package's github repository](https://github.com/r-lib/scales)

## Visualization of the Day

From 2016 at Vox.com: [Where is the Lead Exposure Risk?](https://www.vox.com/a/lead-exposure-risk-map)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class03/figures/lead_map.PNG)
