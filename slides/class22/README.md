# 432 Spring 2019 Class 22: 2019-04-18

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/432_2019_slides22.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/432_2019_slides22.Rmd).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. [Homework 6](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework6) due at 2 PM on Monday 2019-04-22. Submit via [Canvas](https://canvas.case.edu/).
    - In Questions 1-2, you will need to build and describe a visualization using real data. Two good potential sources of data for this work are [FiveThirtyEight's data repository](https://data.fivethirtyeight.com/), and the [Tidy Tuesday repository](https://github.com/rfordatascience/tidytuesday). Health Policy Institute of Ohio has [just released its 2019 Health Value Dashboard](https://www.healthpolicyohio.org/2019-health-value-dashboard/), which has some available data that *might* be appropriate.
2. [As noted below](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/README.md#assignment-for-next-class), you need to read one of the three articles I have assigned, and answer two questions about it, bringing your answers to class on Tuesday 2019-04-23.
3. Quiz 2 will be made available to you by 5 PM on 2019-04-25. It is due at 2 PM on 2019-05-02.
4. Your project presentation will be on 04-29, 04-30, 05-02, or 05-07. The [schedule is here](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-schedule.md), and this includes revised titles in some cases. I believe that only one person has yet to receive my approval for their Project 2 proposal.
5. Your project portfolio is due on 2019-05-07 at 2 PM, regardless of when your presentation is scheduled.
6. We'll get grades on Homework 5 to you as soon as possible. I did fix the typo in [the Answer Sketch](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5/hw05_sketch).

## Comments on the Minute Paper after Class 21

are now available at http://bit.ly/432-2019-minute21-results. Thanks!

## Today's Discussion

will be centered around replicable research, statistical significance and *p* values. I will include in today's conversation a brief walk through this editorial:

- Ronald L. Wasserstein, Allen L. Schirm & Nicole A. Lazar (2019) [Moving to a World Beyond "p < 0.05"](https://www.tandfonline.com/doi/full/10.1080/00031305.2019.1583913), *The American Statistician*, 73:sup1, 1-19, DOI: [10.1080/00031305.2019.1583913](https://doi.org/10.1080/00031305.2019.1583913). The PDF of this article [is also available here](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/Moving%20to%20a%20World%20Beyond%20p%200%2005.pdf).

You may also be interested in [the American Statistical Association's 2016 statement on P Values](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/The%20ASA%20s%20Statement%20on%20p%20Values%20Context%20Process%20and%20Purpose.pdf) which originally got me thinking along these lines. That is properly cited as:

- Ronald L. Wasserstein & Nicole A. Lazar (2016) [The ASA's Statement on p-Values: Context, Process, and Purpose](https://www.tandfonline.com/doi/full/10.1080/00031305.2016.1154108), *The American Statistician*, 70:2, 129-133, DOI:
[10.1080/00031305.2016.1154108](https://doi.org/10.1080/00031305.2016.1154108)

Some related motivation comes from 

- [Scientists rise up against statistical significance](https://www.nature.com/articles/d41586-019-00857-9) in *Nature* 2019-03-20
- [It's time to talk about ditching statistical significance](https://www.nature.com/articles/d41586-019-00874-8) also in *Nature* 2019-03-19.

We'll spend a bit of time talking about:

- the "PROBABLE CAUSE" graphic reprinted in this [Nature piece by Regina Nuzzo](https://www.nature.com/news/scientific-method-statistical-errors-1.14700), originally from T. Sellke et al. in *The American Statistician*, 2001.
- and several great pieces by Christie Aschwanden at 538:
    - "[Not Even Scientists Can Easily Explain P-Values](https://fivethirtyeight.com/features/not-even-scientists-can-easily-explain-p-values/)", and
    - "[Statisticians Found One Thing They Can Agree On: It's Time To Stop Misusing P-values](https://fivethirtyeight.com/features/statisticians-found-one-thing-they-can-agree-on-its-time-to-stop-misusing-p-values/)", and
    - "[Science Isn't Broken](https://fivethirtyeight.com/features/science-isnt-broken/#part1)" with graphics by Ritchie King.
- You may also be interested in this piece at pbs.org about a NOVA program entitled "[Rethinking Science's Magic Number](https://www.pbs.org/wgbh/nova/article/rethinking-sciences-magic-number/)".

### A few points Laurie Ann shared with regard to the discussion of these matters in Epi Book Club

- How long will this shift take before we really stop putting all our marbles on the *p* value in looking at our research, will there be some older generation scientists who cling to it's value for dear life
- What is really the best way to express significance verbally and how to convey this effectively in your writing? We found some examples we came up with depended on if you were writing about the results of an RCT versus a CRSPR gene editing experiment
- Long discussion on the reproducibility of research with a special focus on if any of us have been asked to share R code, how could this be good/bad, etc.

### Assignment for Next Class

We will continue this conversation next time. A key source for that discussion is the [series of articles published as a supplement](https://www.tandfonline.com/toc/utas20/73/sup1?nav=tocList&) in *The American Statistician* Vol. 73, Issue 1: 2019. I'll be asking you to read one of these articles in anticipation of our class next Tuesday. Specifically, I'd like you to read one of these three pieces from that supplement:

1. John P. A. Ioannidis [What Have We (Not) Learnt from Millions of Scientific Papers with P Values?](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1447512)
2. Sherri Rose & Thomas G. McGuire (2019) [Limitations of P-Values and R-squared for Stepwise Regression Building: A Fairness Demonstration in Health Policy Risk Adjustment](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1518269)
3. Robert J. Calin-Jageman & Geoff Cumming (2019) [The New Statistics for Better Science: Ask How Much, How Uncertain, and What Else Is Known](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1518266)

Read your chosen article and respond to these two questions:

1. In a sentence, restate the most important thing you learned from the article you read.
2. Briefly, tell us how you could use this article to change your behavior, or the behavior of other people you are doing science with.

Bring your responses to class on Tuesday 2019-04-23.

### Other Articles I'll Reference Today and Next Tuesday include...

- Andrew Gelman and John Carlin [Beyond Power Calculations: Assessing Type S (Sign) and Type M (Magnitude) Errors](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/Gelman%20and%20Carlin%202014%20Beyond%20Power%20Calculations.pdf)
- Jeffrey Leek and Roger Peng [P-values are just the tip of the iceberg](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/Leek_and_Peng_Nature2015.pdf)
- Jeffrey D Blume, Lucy D'Agostino McGowan, William D. Dupont, Robert A Greevy [Second-generation p values: Improved rigor, reproducibility and transparency in statistical analyses](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/Blume_Second_Gen_P_Values_2018.pdf)

## And Also ...

I have given several talks on "Rethinking Statistical Significance" in recent years. The Github repository for one of the recent ones (90 minutes at MetroHealth Medical Center and the Center for Health Care Research and Policy, with an audio recording) is at https://github.com/THOMASELOVE/rethink, if you're a gluttobn for punishment.

## A Key Resource for Further Learning

- Please check out the [links for learning more about data science provided in this Twitter stream](https://twitter.com/EngelhardtCR/status/1116743032492253185).

### And, finally - I'm in a show April 26 - May 18

The [details are here](https://github.com/THOMASELOVE/theater). Please don't feel any obligation to attend, but come if you'd like to. Thanks.
