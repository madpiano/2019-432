# 432 Spring 2019 Class 23: 2019-04-23

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/432_2019_slides23.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/432_2019_slides23.Rmd).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Homework

- The [Answer Sketch for Homework 6](https://github.com/THOMASELOVE/2019-432/blob/master/homework/homework6/hw6_sketch/432_2019_hw6_sketch.pdf) is now available, [in pdf](https://github.com/THOMASELOVE/2019-432/blob/master/homework/homework6/hw6_sketch/432_2019_hw6_sketch.pdf) and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/homework/homework6/hw6_sketch/432_2019_hw6_sketch.Rmd). The [Grading Rubric for Homework 6](https://github.com/THOMASELOVE/2019-432/blob/master/homework/homework6/hw6_sketch/432_2019_hw6_rubric.pdf) is also posted. I am assuming that multiple people had problems with the `censor` variable in the `umaru` data set.
- Grades on Homeworks 1-5 are posted to http://bit.ly/432-2019-homework-results. We'll put Homework 6 grades up when they are available.
- Regrade requests can be submitted to http://bit.ly/432-2019-regrades at any time before 2 PM on May 7.

## Upcoming Deliverables

1. Quiz 2 will be made available to you by 5 PM on 2019-04-25. It is due at 2 PM on 2019-05-02.
2. Your project presentation will be on 04-29, 04-30, 05-02, or 05-07. The [schedule is here](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-schedule.md)
3. Your project portfolio is due on 2019-05-07 at 2 PM, regardless of when your presentation is scheduled.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/figures/dude.PNG) from [@healthstatsdude](https://twitter.com/healthstatsdude/status/1102442635233382400)

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/figures/dude2.PNG) from [@healthstatsdude](https://twitter.com/healthstatsdude/status/1119390175350513664)

![](https://imgs.xkcd.com/comics/null_hypothesis.png) from [XKCD](https://xkcd.com/892/)

## Today's Discussion

will be centered around replicable research as well as thinking about power issues through retrospective design. The main resources are:

- Ronald L. Wasserstein, Allen L. Schirm & Nicole A. Lazar (2019) [Moving to a World Beyond "p < 0.05"](https://www.tandfonline.com/doi/full/10.1080/00031305.2019.1583913), *The American Statistician*, 73:sup1, 1-19, DOI: [10.1080/00031305.2019.1583913](https://doi.org/10.1080/00031305.2019.1583913). The PDF of this article [is also available here](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class22/Moving%20to%20a%20World%20Beyond%20p%200%2005.pdf).
- Ronald L. Wasserstein & Nicole A. Lazar (2016) [The ASA's Statement on p-Values: Context, Process, and Purpose](https://www.tandfonline.com/doi/full/10.1080/00031305.2016.1154108), *The American Statistician*, 70:2, 129-133, DOI:
[10.1080/00031305.2016.1154108](https://doi.org/10.1080/00031305.2016.1154108)
- Andrew Gelman and John Carlin [Beyond Power Calculations: Assessing Type S (Sign) and Type M (Magnitude) Errors](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/Gelman%20and%20Carlin%202014%20Beyond%20Power%20Calculations.pdf)

### Assignment for Today

I asked you to read one of these three pieces from that supplement:

1. John P. A. Ioannidis [What Have We (Not) Learnt from Millions of Scientific Papers with P Values?](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1447512)
2. Sherri Rose & Thomas G. McGuire (2019) [Limitations of P-Values and R-squared for Stepwise Regression Building: A Fairness Demonstration in Health Policy Risk Adjustment](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1518269)
3. Robert J. Calin-Jageman & Geoff Cumming (2019) [The New Statistics for Better Science: Ask How Much, How Uncertain, and What Else Is Known](https://www.tandfonline.com/doi/full/10.1080/00031305.2018.1518266)

After you'd read your chosen article, I asked you to respond to these two questions, and bring your responses to class today.

1. In a sentence, restate the most important thing you learned from the article you read.
2. In a sentence, tell us how you could use this article to change your behavior, or the behavior of other people you are doing science with.

We'll discuss your results next.

### Need to have a tough talk with someone about p values?

- The ASA Section on Teaching of Statistics in the Health Sciences has [some interesting material](https://tshsblog.wixsite.com/main/single-post/2018/05/08/ReadyResources-Publications-for-teaching-p-values)
- I've given these posts: [Why I've lost faith in p values, part 1](https://lucklab.ucdavis.edu/blog/2018/4/19/why-i-lost-faith-in-p-values) and [Why I've lost faith in p values, part 2](https://lucklab.ucdavis.edu/blog/2018/4/28/why-ive-lost-faith-in-p-values-part-2) to a few people. Maybe they'll help you.
- Hot off the press is an opinion piece entitled "[Abandoning statistical significance is both sensible and practical](https://peerj.com/preprints/27657/)" by Amrhein, Gelman, Greenland and McShane at PeerJ Preprints.
- Also, here's a reminder about Frank Harrell's post about "[Language for communicating frequentist results about treatment effects](https://discourse.datamethods.org/t/language-for-communicating-frequentist-results-about-treatment-effects/934)"
- And, one more thing, from Andrew Gelman: [Statistical-significance thinking is not just a bad way to publish, it’s also a bad way to think](https://statmodeling.stat.columbia.edu/2019/03/16/statistical-significance-thinking-is-not-just-a-bad-way-to-publish-its-also-a-bad-way-to-think/) - the money quote: "it’s ultimately not about what it takes, or should take, to get a result published, but rather how we as researchers can navigate through uncertainty and not get faked out by noise in our own data."

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/shruggies.PNG) from [Kevin Reuning](https://twitter.com/KevinReuning/status/796107864704188420)

## Some Tips and Resources / Things I wanted to Share

1. [Dorsa Amir describes this](https://twitter.com/DorsaAmir/status/1118651866886361090) as the funniest data visualization she's ever seen. What do you think?

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class23/figures/marijuana-viz.png)

2. from Hadley Wickham, [via Allison Moberger](https://twitter.com/allimoberger/status/1085268564821585921?s=11) "You shouldn't feel ashamed about your code - if it solves the problem, it's perfect just the way it is. But also, it could always be better." [And also](https://twitter.com/allimoberger/status/1085278208222810117?s=11), "If you're ever unsure about how to pronounce a function, just say it with utmost confidence, and make other people doubt the way they say it."
3. from Karl Broman, a repository of [slides from the R Studio 2019 conference](https://github.com/kbroman/RStudioConf2019Slides) I attended earlier this year.
4. Andrew Heiss has a great post on [Half a dozen frequentist and Bayesian ways to measure the difference in means between two groups](https://www.andrewheiss.com/blog/2019/01/29/diff-means-half-dozen-ways/), and [here is the Tweet](https://twitter.com/andrewheiss/status/1090387296036126720) that alerted me to it.
5. If you're interested in Using R to analyze the redacted Mueller report, [take a look at Josephine Lukito's compliation](https://www.jlukito.com/blog/2019/4/20/using-r-to-analyze-the-redacted-mueller-report).
6. [Alison Hill reminded me](https://twitter.com/apreshill/status/1108925218850893832?s=11) that you can embed a "code download" button in an HTML document built with R Markdown so that users can click to download your source .Rmd, without Github.
7. [Laura Hatfield and Alyssa Bilinski in JAMA](https://jamanetwork.com/journals/jama/article-abstract/2720017) on failing to reject the null and reporting "no effect" - [twitter stream is here](https://twitter.com/ambilinski/status/1082747727539326978)
8. Roger Peng writes admirably on [The Tentpoles of Data Science](https://simplystatistics.org/2019/01/18/the-tentpoles-of-data-science/) and on [Tukey, Design Thinking, and Better Questions](https://simplystatistics.org/2019/04/17/tukey-design-thinking-and-better-questions/) at the [Simply Statistics](https://simplystatistics.org/) blog.
9. [Radix for R Markdown](https://blog.rstudio.com/2018/09/19/radix-for-r-markdown/) retains its appeal to me. I look forward to the day when more and more people use it.

## And, finally - I'm in a show April 26 - May 18

The [details are here](https://github.com/THOMASELOVE/theater). Please don't feel any obligation to attend, but come if you'd like to. Thanks.
