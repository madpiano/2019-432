# 432 Spring 2019 Class 01: 2019-01-22

- The course web site is https://github.com/THOMASELOVE/2019-432. This page is in the **Slides** section, under **class01**.
- Professor Love's Slides for Class 1 are available now. Most should [download the pdf file](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/432_2019_slides01.pdf), but the [R Markdown file](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/432_2019_slides01.Rmd) I used to generate the PDF is also available.
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Getting Help

For any questions related to the course, email `431-help at case dot edu`. Our teaching assistants and myself are now monitoring this, and this should yield the fastest possible response.

- TAs this term: Bob Winkelman, Satyakam Mishra, Maher Kazimi, Zuxi (Terry) Cui, and Xueyi (Julia) Zhang.
- Office hours are 11:30 - 12:45 Monday through Friday, plus 2:30 - 3:45 on Tuesdays and Thursdays. Details at the bottom of the [Course Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md).

## Roster Check

An initial course roster is available now in the Google Spreadsheet at http://bit.ly/432-2019-roster-check. You may need to log into Google via CWRU to see the actual link, and then verify the information (editing where needed), especially:

- the name you want me to call you
- your current employment status (which could certainly be full-time student, exotic animal wrangler, or cardiac surgery nurse at CCF, or whatever you want to share - I'm curious about what you're doing outside of this class.)
- edit the provided CWRU email if needed to specify the email you'd like me to use for you in 432.

If you do not appear on this roster, add your information and email Dr. Love to tell him.

## Announcements

### EpiBookClub

Some folks in this class (Laurie Ann Moennich and Wyatt Bensken) have been instrumental in setting up an #EpiBookClub for the Spring, where the group will be discussing Kieran Healy’s recently published [Data Visualization: A Practical Introduction](http://socviz.co/index.html#preface). 

- They will be meeting in WG-82C every other Thursday from 2:30 - 3:30, starting 2019-01-31. Snacks will be involved.
- It will be an open discussion about data visualization theory and tools, with coding examples and troubleshooting together. 
- The discussion will be structured around the #EpiBookClub [Twitter conversation](https://twitter.com/search?q=%23epibookclub&src=tyah). 
- All are welcome regardless of experience, and the text assumes little to no prior R/RStudio experience.
- If you’d like to be added to the email list for additional updates, please let Wyatt or Laurie Ann know, or send a note to 431-help, and we'll make sure it gets to the people who need it.

If you're interested, I definitely recommend John Rauser's talk [How Humans See Data](https://t.co/vfsUtxbJqY) which aims to help you be more effective at getting ideas into other people's heads. The talk was commended to me (and to #epibookclub twitter) [by Frank Harrell](https://twitter.com/f2harrell/status/1077191124715008000). 

### Course Password

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/figures/tukey.png)

### Attendance

I expect you to come to class. If you have to miss a single class, just be sure to catch up on any needed materials - no need to let me know in advance or afterwards. We expect you to complete all necessary deliverables, and to review the README for that day's class for other announcements. The audio recording can help, too. 

If, however, you are going to miss more than one class in a row, you should let Dr. Love know, via email, in advance, ideally.

## Deliverables

- The Minute Paper after Class 01 is at http://bit.ly/432-2019-minute01. Complete it by 2 PM tomorrow (2019-01-23).
- [Homework 1](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due 2019-02-01 at 2 PM.
- Your [Proposal for Project 1](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) is due 2019-02-15 at 2 PM. It would help to look at the instructions soon.

## Today's Materials

- The slides for today are found above: [432_2019_slides01.pdf](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/432_2019_slides01.pdf) and [432_2019_slides01.Rmd](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/432_2019_slides01.Rmd).
- Karl W. Broman & Kara H. Woo (2018) [Data Organization in Spreadsheets](https://github.com/THOMASELOVE/2019-432/blob/master/references/pdf/Broman_and_Woo_2018_Data_Organization_in_Spreadsheets.pdf), *The American Statistician*, 72:1, 2-10, DOI: [10.1080/00031305.2017.1375989](https://doi.org/10.1080/00031305.2017.1375989) will be discussed starting in Class 1.
- The material we discuss today about building a Table 1 in R is introduced in [Chapter 1 of the Course Notes](https://thomaselove.github.io/2019-432-book/building-table-1.html).

### We'll do some "live" coding today. Materials for that include: 

- [bradley_table1.md](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/bradley_table1.md) = Github Markdown result of applying my code
- [bradley_table1.Rmd](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/bradley_table1.Rmd) = R Markdown code
- [bradley.csv](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/data/bradley.csv) data file, which the code expects to be in a `data` subfolder.
- Or maybe you want to skip to the resulting file created in R to represent Table 1, at [bradley_table1_result.csv](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/bradley_table1_result.csv). We can import this straight into Excel.

There is also a pair of files showing how I simulated the `bradley.csv` data in R: [bradley_sim.md](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/bradley_sim.md) and [bradley_sim.Rmd](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/bradley_sim.Rmd), if you are curious.

## Supplemental Materials discussed today

### On Data Organization

- The [Leek group guide to data sharing](https://github.com/jtleek/datasharing): "How to share data with a statistician"
- Shannon Ellis and Jeff Leek "[How to share data for collaboration](https://peerj.com/preprints/3139/)" preprint.
- Hadley Wickham's paper on [Tidy data](https://www.jstatsoft.org/article/view/v059i10) from *J of Statistical Software*
- Jenny Bryan "[Naming Things](https://speakerdeck.com/jennybc/how-to-name-files)" presentation on [SpeakerDeck](https://speakerdeck.com/jennybc/how-to-name-files).
- Wilson, Bryan, Cranston, Kitzes, Nederbragt and Teal "[Good enough practices in scientific computing](https://github.com/swcarpentry/good-enough-practices-in-scientific-computing#readme)".
- CRAN vignette providing an overview of functions in [the `janitor` package](https://cran.r-project.org/web/packages/janitor/vignettes/janitor.html) including `clean_names`.
- We saw several cartoons from [XKCD](https://xkcd.com/).

### Building Table 1

- Today's Table 1 example came from Bradley SM, Borgerding JA and Wood GB et al. [Incidence, Risk Factors, and Outcome Associated with In-Hospital Acute Myocardial Infarction](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2720923), published 2019-01-18 in *JAMA Network Open* doi:10.1001/jamanetworkopen.2018.73
- [Instructions for Table Creation](https://jama.jamanetwork.com/data/ifora-forms/jama/tablecreationinst.pdf) from JAMA

## Tweet of the Day

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/figures/branch_tw.png)

## Visualization of the Day

*The New York Times*, 2019-01-05: [What the Shutdown Would Look Like
if It Happened in Other Industries](https://www.nytimes.com/interactive/2019/01/05/us/government-shutdown-comparisons-companies.html)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class01/figures/nyt_shutdown.PNG)

## For Next Time

- If you haven't completed the Roster Check yet, please do so at http://bit.ly/432-2019-roster-check now.
- The Minute Paper after Class 01 is at http://bit.ly/432-2019-minute01. Please complete it by 2 PM tomorrow (2019-01-23).
- We'll be discussing the BRFSS/SMART example, which is introduced in [Chapter 2 of the Course Notes](https://thomaselove.github.io/2019-432-book/linear-regression-on-a-small-smart-data-set.html).
- Skim Frank Harrell & others (2019) [Glossary of Statistical Terms](http://hbiostat.org/doc/glossary.pdf). 
    - In today's class, we assumed you knew, for example, what the following terms mean: binary variable, case-control study, categorical variable, comparative trial, confidence limits, continuous variable, data science, dummy variable, estimate, goodness of fit, inter-quartile range, mean, median, nonparametric estimator, nonparametric tests, normal distribution, null hypothesis, observational study, one-sided test, *p*-value, parametric test, percentile, predictor, probability, quartiles, random error, random sample, rate, replication, risk, significance level, standard deviation, standard error, two-sided test, Type I error, variance.
    - If any of these terms seem unfamiliar, read up on them. If that's not too overwhelming, then glance through the remainder of the list and find a few more that interest you, and read those closely.
