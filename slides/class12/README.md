# 432 Spring 2019 Class 12: 2019-03-07

- Today's class continued with the semi-live coding work on the Ohio Medicaid Assessment Survey. 
    - The R Markdown file is here and the HTML result we'll look at in class [is on my RPubs site](http://rpubs.com/TELOVE/omas_2019_class12).
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.
- Remember that our class does not meet next week, due to CWRU Spring Break.

## Upcoming Deliverables

1. [Project 1](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) is due at 2 PM on 2019-03-15, even though our next class meeting is not until 2019-03-19.
    - A complete draft of Tasks 1-11 (including analyses) for Project 1 is [here in HTML](http://rpubs.com/TELOVE/project1_demo_2019-432), and [here in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project1-demo/432_2019_project1_demo_full_draft.Rmd).
    - Last week, I augmented [the Project 1 Instructions](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) with some materials on spending degrees of freedom and adding non-linear terms to a model.
2. [Homework 4](https://github.com/THOMASELOVE/2019-432/tree/master/homework) is due at 2 PM on 2019-03-22. It **will be available before we next see each other**.
3. Your [Project 2 Proposal](https://github.com/THOMASELOVE/2019-432/tree/master/projects) is due at 2 PM on 2019-03-29. 
    - Those of you without a good idea for a project 2 proposal (and who are perhaps considering using things like existing educational or machine learning repositories with very old data), here are a few recommendations:
        - [County Health Rankings](http://www.countyhealthrankings.org/explore-health-rankings/rankings-data-documentation)
        - [BRFSS](https://www.cdc.gov/brfss/index.html) (Behavioral Risk Factor Surveillance System)
        - [500 Cities](https://www.cdc.gov/500cities/index.htm) data
        - Sports fans might like [the Lahman baseball database](https://www.rdocumentation.org/packages/Lahman/versions/6.0-0), [NFL Scrap-R data](https://github.com/ryurko/nflscrapR-data/tree/master/games_data/regular_season), [English and European soccer results](https://github.com/jalapic/engsoccerdata), [NBA Stat R](https://github.com/abresler/nbastatR), or [Stats on the T tennis data](https://github.com/skoval/deuce),
        - and, there's always [NHANES](https://www.cdc.gov/nchs/nhanes/index.htm).
4. I didn't manage to do a Minute Paper this week, for which I apologize. That will return after the break.

## Quiz 1 Results

- Grades for Quiz 1 are posted to [the Homework Roster](http://bit.ly/432-2019-homework-results) at http://bit.ly/432-2019-homework-results. You'll need your homework code, which Dr. Love emailed you on 2019-02-07.
- The [Quiz 1 answer sketch](https://github.com/THOMASELOVE/2019-432/blob/master/quizzes/quiz1_materials/sketch_quiz_01_2019.pdf) includes detailed grading information, and is [available to you now](https://github.com/THOMASELOVE/2019-432/blob/master/quizzes/quiz1_materials/sketch_quiz_01_2019.pdf).
- The maximum possible grade on the quiz was 60 points. 
- The highest score achieved was 55.5/60. The mean was 46 and the median score was 48.5.
-  I will extend two honors opportunities. Details to come before we meet again.

1. Successful completion of the first opportunity will increase your score a bit on the quiz, and will be open to anyone who wants to take advantage of it, and in fact, I hope **everyone** does it. 
2. The second opportunity will include the first but also something more extensive, will come with the potential for a larger increase in your quiz score, but will be restricted to those who scored below 50/60 on the quiz initially.

## A Note on Interpreting Effect Sizes

An obvious issue with the Quiz was that it's difficult to describe an effect size. I built a document to try to help, which we'll review today. It's available [in PDF (as a Tufte Handout)](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class12/class12note.pdf), or [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class12/class12note.Rmd), and works [with a small data set](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class12/small.csv).

## Bootstrap Validation

[This 2014 post by Jonathan Bartlett at The Stats Geek](http://thestatsgeek.com/2014/10/04/adjusting-for-optimismoverfitting-in-measures-of-predictive-ability-using-bootstrapping/) does a great job of explaining the logic behind the bootstrap validation approach that comes with default choices using the `validate` function as applied to an `rms` model fit.

## Anscombe's Quartet and "Cheating"

[Anscombe's Quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet) is one of those statistical examples famous enough to have [its own Wikipedia page](https://en.wikipedia.org/wiki/Anscombe%27s_quartet). The [anscombe data](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/anscombe.html) come with every installation of R, as part of the `datasets` package.

Joseph Hnath was good enough to send along [this 2015 post by Stephen Turner](https://www.r-bloggers.com/using-and-abusing-data-visualization-anscombes-quartet-and-cheating-bonferroni/), which reminds us of the simultaneous importance of (a) plotting your data before running models and (b) not letting "looks" at the data bias your eventual inferences. As Stephen writes,

> The moral of the story here is to always look at your data, but don’t “cheat” by basing which statistical tests you perform based solely on that visualization exercise.

### The Datasaurus

For a more modern take on the same idea (complete with some snazzy animation), you may also want to remind yourself of [The Datasaurus](https://r-mageddon.netlify.com/post/reanimating-the-datasaurus/) that most of us discussed near the end of 431. There's also a `datasauRus` R package, if you're interested.

## 24 Visualizations to help Teach People about Climate Change

from [The New York Times, 2019-02-28](https://www.nytimes.com/2019/02/28/learning/teach-about-climate-change-with-these-24-new-york-times-graphs.html).

- There's also a [Statistics Across Subjects: Teach With Graphs From The New York Times](https://event.on24.com/eventRegistration/EventLobbyServlet?target=lobby20.jsp&eventid=1949454&sessionid=1&partnerref=facebook&key=C2DDE4510E3CB38079387225896A0180&eventuserid=231885576) webinar on 2019-03-20] that might interest you.
