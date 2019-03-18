432 Project 2 Instructions for Spring 2019
================
Thomas E. Love
Version: 2019-03-17

  - [Introduction](#introduction)
  - [There are Three Deliverables for Project
    2](#there-are-three-deliverables-for-project-2)
  - [Your Data](#your-data)
      - [Where can I get interesting
        data?](#where-can-i-get-interesting-data)
  - [Some Restrictions on Your Data Set (What data are you *not* allowed
    to
    use?)](#some-restrictions-on-your-data-set-what-data-are-you-not-allowed-to-use)
      - [No hierarchical data\!](#no-hierarchical-data)
  - [What Dr. Love Wants to See in a
    Portfolio](#what-dr.-love-wants-to-see-in-a-portfolio)
      - [Things I Definitely Want To See in Project
        2](#things-i-definitely-want-to-see-in-project-2)
      - [General Comments](#general-comments)
      - [Project Portfolio Template Built By
        Dr. Love](#project-portfolio-template-built-by-dr.-love)
      - [At Your Presentation](#at-your-presentation)
      - [Some Restrictions on Modeling (meant to make this a little
        easier)](#some-restrictions-on-modeling-meant-to-make-this-a-little-easier)
  - [Questions and Answers](#questions-and-answers)
  - [Need Help?](#need-help)

This document is found at
<https://github.com/THOMASELOVE/2019-432/tree/master/projects/project2>
and it will be updated as needed as the semester progresses.

# Introduction

Project 2 requires you to answer a research question (or two) of your
own choosing with data you obtain. You can work individually or in a
group of 2 people. You can study any question you like, although I’d
steer clear of anything that you think Dr. Love might find
inappropriate.

  - Jeff Leek, in *How to be a Modern Scientist* has some excellent
    advice in his section on “How Do You Start a Paper.” In particular,
    you want to identify a research question or (perhaps) two questions
    that:
      - are concrete, (and for which you can find useful data), and that
      - solve a real problem, and that
      - give you an opportunity to do something new,
      - that you will feel ownership of, and
      - that you want to work on.

# There are Three Deliverables for Project 2

1.  You will complete the [Project 2 Registration and Scheduling
    Form](http://bit.ly/432-2019-project2-registration), which is
    available now at <http://bit.ly/432-2019-project2-registration>, to
    register your project and specify presentation times for which you
    (and your partner, if any) are available.
      - The form is due when the [Course
        Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md)
        says it is.
      - The form will require you to specify the project title, your
        list of research questions, and to provide some specific details
        about your data set.
      - The form will also require you to specify 10 times (out of the
        54 available time slots) when you can give your project.
      - On the basis of this submission, Dr. Love will either approve or
        reject your Project 2 idea, and once he approves it, you can
        proceed.
          - If he cannot approve your project, he’ll tell you why, and
            you’ll need to try again, by editing your response and
            re-submitting it.
          - The main reason why Dr. Love doesn’t approve projects is
            that he doesn’t understand your description of your data
            set, or how your research questions are linked to your data
            set - so focus on making those descriptions and questions as
            clear as possible.
2.  You will build a **written portfolio** of Project 2 materials. This
    will include some background, your research questions, your data
    management work and codebook, and then your analytic work, data
    descriptions, results and conclusions.
      - The written portfolio is due when the [Course
        Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md)
        says it is.
      - The format for this portfolio is described below, and Dr. Love
        has prepared a template that you can use, or adapt. This
        includes some background, your research questions, your data
        management work and codebook, and then your analytic work, data
        descriptions, results and conclusions.
      - You will submit the portfolio (including at least an R Markdown
        file and an HTML result of knitting that R Markdown file) via
        Canvas. The Canvas location to submit the portfolio will go live
        shortly before our last class of the semester.
3.  You will give a **presentation of your portfolio** to Dr. Love in
    his office (Wood WG 82-L). Your presentation time will be determined
    based on your Registration Form, and will be announced when the
    [Course
    Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md)
    says it will.
      - Each time slot is 20 minutes long. Plan to arrive 10 minutes
        early, and stay 10 minutes afterwards, please.
      - There are 54 available time slots, on April 29, 30, May 2 and
        May 7. Not all time slots will be scheduled.

# Your Data

  - You must completely identify the source of the data, so that
    Dr. Love understands what data you are using very well, but you
    will not be required to share the data with him, or anyone else.
  - You must have any necessary approvals to use your data in a Project
    for this course.
      - Dr. Love does not need to see the actual data you use in Project
        2, but he will see the results, naturally, and he will need to
        see a sample of potential values for all variables you wind up
        discussing in your portfolio.
  - If the data are available online, you must provide a working URL
    with instructions to access the data.
  - There are no absolute minimum or maximum numbers for observations or
    variables in Project 2, but I expect most projects to have between
    250 and 10,000 observations.
      - If you are describing a binary or multi-categorical outcome,
        each category you are studying should happen in at least 25
        cases.

## Where can I get interesting data?

Dr. Love will be **far** more impressed with a data collection effort
that puts together at least two different data bases, than he will be
with an effort that uses only a single data file.

  - This will require you to learn something about the various joining
    commands, like `left_join` and `inner_join` that are highlighted in
    the Combine Data Sets section on the [Data Transformation Cheat
    Sheet](https://www.rstudio.com/resources/cheatsheets/) at the R
    Studio web site.
      - I heartily recommend Garret Grolemund’s YouTube materials on
        Data Wrangling, for instance [this Introduction to Data
        Manipulation](https://www.youtube.com/watch?v=AuBgYDCg1Cg) which
        is about combining multiple data sets.
      - Another great resource for combining data sets (and most of your
        other R questions) is [R for Data
        Science](http://r4ds.had.co.nz/), by Wickham and Grolemund.
  - National Health and Nutrition Examination Survey (NHANES) is one
    nice source of data. If you didn’t use NHANES data in Project 1, you
    are welcome to use NHANES data in Project 2.
      - Consider combining three or more data sets a minimum requirement
        if you’re using NHANES data.
  - The [Hospital Compare data
    sets](https://data.medicare.gov/data/hospital-compare#) might be
    interesting.
  - The [Behavioral Risk Factor Surveillance
    System](https://www.cdc.gov/brfss/index.html) is an excellent data
    source, but stay away from the SMART BRFSS summaries, since we’re
    working with those in class.
  - Many other open data sources are listed at [this link from
    ropensci](https://github.com/ropensci/opendata). This is a place to
    find a wide variety of tools that help you identify and work with
    interesting data sets in R, including `nhanesA` and similar tools
    for public health work.
  - Some excellent suggestions are found [at this
    link](http://guides.lib.berkeley.edu/publichealth/healthstatistics/rawdata)
    from the library system at UC/Berkeley.
  - Another place that might be worth looking at for interesting and
    relevant research data is [figshare](https://figshare.com/), perhaps
    within [its Health Sciences
    category](https://figshare.com/categories/Health_Sciences/142). The
    ratio of useful stuff to not-useful stuff isn’t great, but you might
    find a good option. The R package
    [rfigshare](https://cran.rstudio.com/web/packages/rfigshare/rfigshare.pdf)
    is designed mainly to help you store data on figshare rather than
    retrieve it, but it might be worth looking at,
too.

# Some Restrictions on Your Data Set (What data are you *not* allowed to use?)

  - You are not allowed to use data stored as a data set in any R
    package.
  - You are not allowed to use data from a textbook or other educational
    resource for learning statistics, data science or related methods
    (online or otherwise).
  - You are not allowed to use data Dr. Love or Dr. Briggs or any other
    faculty member at CWRU has provided to you for educational purposes.
  - You cannot reuse the data you used in Project 1 for 432, although
    you can use a different data set to answer related questions. You
    are welcome to reuse data you used in your 431 project if it is
    suitable and you haven’t used it in Project 1 for 432.
  - Dr. Love is a little tired of data from Kaggle and other data
    analysis competitions. Avoid those unless you can make a very
    powerful argument for their relevance to a question of real interest
    to you.

## No hierarchical data\!

  - We want to powerfully discourage you from working with data that
    really require the use of multi-level models. For the most part,
    those require tools we haven’t given sufficient emphasis to in 432.
      - One example would be a model of patient results that contains
        measures not just for individual patients but also measures for
        the providers within which patients are grouped, and also for
        health systems in which providers are grouped.
      - Another example would be a model of individual people’s outcomes
        where the covariates are gathered at the state or county level,
        as well as at the level of individuals.
      - If your proposed research questions involve the analysis of data
        that are *nested* like those above, Dr. Love is probably going
        to reject the project. There simply isn’t time to learn the best
        approaches for that stuff before May.

# What Dr. Love Wants to See in a Portfolio

Your portfolio will need to address the following issues:

1.  What your research question(s) were and why they are important.
2.  What data you used and why it was relevant to addressing your
    question(s).
      - You’ll wind up presenting some details on data management, a
        tidied data file (or a summary of it), and a codebook.
      - You should present at least two effective visualizations of your
        data that help Dr. Love understand what can be said about your
        research question(s), at least one of which should help Dr. Love
        explore your data, and at least one of which should help
        Dr. Love evaluate the success of a particular model.
3.  What statistical methods you used to analyze and model the data and
    why they were appropriate.
      - In particular, you are required to present at least one result
        that is derived from an appropriate regression model, using
        tools developed in 432. Treat this as a minimum standard. Your
        models should be clearly linked to your eventual conclusions
        about your research question(s).
4.  What the results say about your research question(s) - what you have
    learned by doing this project?

All four parts are crucial.

## Things I Definitely Want To See in Project 2

After you register your project and sign up for a presentation time, you
have only one job - build a spectacularly well-designed and
well-analyzed study then present it to Dr. Love (orally and in a written
HTML file) beautifully. I want to see:

1.  a clear statement of one or two research questions, preceded by an
    appropriate (but not at all lengthy) background section motivating
    those questions.
2.  a clear description of the data to be used, with careful attention
    to cleaning the data to make the follow-up analyses as
    straightforward as possible.
3.  the use of techniques from the 431-432 sequence for every stage of
    the data science process, from data ingest and tidying through the
    cycle of transformation, visualization and modeling, and then
    finally a careful communication of the end result.
4.  the use of regression methods (which can include OLS, logistic
    models, and the more recently discussed methods for count,
    multi-categorical and survival outcomes) that are directly
    applicable to the research questions you posed at the start
5.  the use of appropriate tools for diagnosing the quality of those
    models, including visualizations and summary statistics
6.  identification and comparison of candidate models to address your
    research question(s) if there are real choices to be made (if you
    have a clear model in mind at the start, there’s no need to use
    “best subsets” or something just to artificially create a
    competitor)
7.  validation of your models in an appropriate way if prediction is
    relevant to your research question(s), as I expect it will be
8.  clear evidence that you have thought hard, and well, about what
    pieces of output, specifically, think in terms of creating
    meaningful annotations for every single scrap of output that you
    generate and present: if you cannot think of anything to say about a
    piece of output easily, why are you including it?
9.  a clear re-statement of the research questions you asked at the
    start, now with conclusions that answer those questions
10. a clear statement of the limitations of your approach, and
11. a clear statement about useful next steps that you would like to try
    on the data, moving forward
12. an extremely well-organized presentation of the portfolio,
    well-labeled, with good headings used throughout and making good use
    of the technology to create a table of contents that helps guide us
    to specific elements of your work quickly.

## General Comments

  - Make your portfolio gorgeous, thoughtful and incredibly easy for
    Dr. Love to use in evaluating your work.
  - Jeff Leek’s material in *How To Be a Modern Scientist* is very
    useful here, in particular the material on Scientific Talks and on
    Paper Writing. We especially like the advice to write clearly and
    simply.
  - Include all R code and output that you need to help Dr. Love
    understand the important issues in your study.
  - Cleaning the data is a vitally important step. Dr. Love will assume
    that you have done it perfectly. The TAs can help you, but this is
    your responsibility.
  - Your cleaning should use tools from the tidyverse when possible, and
    you should do all analytic work on tibbles, whenever possible.
  - Don’t include warnings or messages from R that we don’t need to know
    about.
  - Never show long versions of output when short ones will do. A
    particularly good idea is to print a tibble rather than showing an
    entire data set.
  - Review your output file carefully before submission for copy-editing
    issues (spelling, grammar and syntax.) Even with spell-check (just
    hit F7), it’s hard to find errors with these issues in your Markdown
    file so long as it is running. You really need to look at the
    resulting output, closely.
  - Structure your presentation so you (and I) can find things very
    easily. Useful names in the headers help, certainly, but thoughtful
    construction of an argument and good NAMES for things in your code,
    and in the headings of your presentation is really the most
    important thing.
  - Jeff Leek’s best piece of advice in my opinion is to make the
    **FIGURES** the focus of your writing and your presentation.
  - Another good piece of advice is to acknowledge the work of others
    appropriately (especially in highlighting where the data come from.)
    Be gracious.

## Project Portfolio Template Built By Dr. Love

Dr. Love built a sample template for the Project Portfolio, using the
`rmdformats` package.

  - The Project 2 Template is built on the `readthedown` template.
      - Here is the [R Markdown
        file](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project2/project2-template-432-2019.Rmd)
        for the Template, and you can also [view the HTML result at
        RPubs](http://rpubs.com/TELOVE/project2-template-432-2019).
  - The
    [cardiac.csv](https://github.com/THOMASELOVE/2019-432/blob/master/data-and-code/cardiac.csv)
    file was used in these templates to help fix ideas.

An alternate template or formatting style is acceptable only if it: -
contains all of the content in these templates, including the
restrictions - and uses a **dynamic** (or at least floating) and
attractive table of contents, as these do. A dynamic table of contents
adjusts to account for the section of the work you’re working with, and
is not merely a floating table of contents, but either is acceptable.

When you submit your project to Canvas,

  - include your name in the file name, rather than retaining the
    original template’s name
  - remove all of the sample text in the template and instructions that
    I included to help you decide where things go,
  - spell-check your work (just hit F7), and have someone else look it
    over for typographical errors and errors in grammar or syntax, or
    statements that are unclear.

## At Your Presentation

You will give a 15 minute presentation of the results contained in your
portfolio, hitting on these four key points (repeating some of the
details here because they are so important)…

1.  What your research question(s) were and why they are important.
2.  What data you used and why it was relevant to addressing your
    question(s).
      - You should present at least two effective visualizations of your
        data that help Dr. Love understand what can be said about your
        research question(s), at least one of which should help Dr. Love
        explore your data, and at least one of which should help
        Dr. Love evaluate the success of a particular model. Build the
        presentation around the figures\!
3.  What statistical methods you used to analyze and model the data and
    why they were appropriate.
      - In particular, you are required to present at least one result
        that is derived from an appropriate regression model, using
        tools developed in 432. Treat this as a minimum standard. Your
        models should be clearly linked to your eventual conclusions
        about your research question(s).
4.  What the results say about your research question(s) - what you have
    learned by doing this project?
      - Be as clear as possible in both your writing in your HTML file
        and your speaking about how you address each of the four main
        issues specified above.

<!-- end list -->

  - You can give your presentation using any format you like.
  - You are giving a 15 minute presentation, but the reason the time
    slots are 20 minutes is that Dr. Love will ask questions of you,
    during and after your presentation.
      - Your ability to address those questions effectively, using the
        results from your portfolio of work, is the thing that will
        separate mediocre grades from excellent ones, in most cases.
      - You will need to be agile in responding to me. Anticipate tough
        questions. Dr. Love will be looking for clear answers, motivated
        by your results.
  - If you work as a team, Dr. Love will pick one of you at random, on
    the spot, to deliver the first half of the presentation, and the
    other will do the second half. Dr. Love will address questions to
    each of you.

## Some Restrictions on Modeling (meant to make this a little easier)

While you can fit a model including up to the complete set of predictors
I approved in your proposal, I strongly recommend you restrain yourself
to **no more than 8 actual predictors** in a final model regardless of
your sample size. Anything more than that will be difficult to interpret
at best.

  - If your number of main effects (predictors) that you want to include
    in your final model exceeds the number of degrees of freedom
    specified below, then don’t add any non-linear terms.
  - If you do decide to include non-linear terms as determined based on
    a Spearman rho-squared plot, then adhere closely to the maximum
    degrees of freedom specified in the table below. These df limits
    include the intercept term(s).

<!-- end list -->

1.  If you are fitting a regression to a **quantitative or count**
    outcome, let *n* = sample size. For this count and all of the counts
    here, do not include any data points where the outcome is missing.
2.  If you are fitting a regression to a **categorical** outcome, let
    *n* = \# of observations in the category with the smallest sample
    size.
3.  If you are fitting a regression to a **time-to-event** outcome, let
    *n* = \# of observations where the event occurred (was not
    censored).

| Value of *n* | 10-100 | 101-250 | 251-500 | 501-999 | 1000+ |
| -----------: | -----: | ------: | ------: | ------: | ----: |
| Maximum *df* |      6 |       9 |      12 |      16 |    20 |

  - **For project 2**, don’t worry about penalizing yourself for
    “peeking” at the data by running automated selection procedures or
    scatterplot matrices.
  - If you are running either a linear regression or a (binary) logistic
    regression, you should run some sort of model validation, ideally
    one that generates estimated root mean squared prediction errors and
    mean absolute prediction errors comparing two or more models (for a
    quantitative outcome) or a confusion matrix (for a binary outcome),
    but if not, at least run validations of key summary statistics.
  - Regarding **missing data**:
      - You may drop all cases without complete outcome data.
      - Otherwise, you should use multiple imputation to deal with
        missing values in presenting a final regression model for either
        a linear or logistic regression.
      - You may use simple imputation in the process of developing your
        models, or in presenting final models for regression approaches
        for count, multi-categorical or time-to-event with censoring
        outcomes.
      - Do not use a complete-case analysis or sampling strategy except
        to ensure that all of your cases have complete outcome data.

# Questions and Answers

> Does Project 2 have to include everything that we did in Project 1?

In Project 2, you don’t need to present everything in Project 1’s Tasks
1-9, and you’re not even required to format any of it in that way, but I
would think you’d want to have most of that information at your
fingertips in a presentation, so think carefully about what to keep and
what to drop. Clearly, what is in Tasks 7 and 8 in Project 1 will need
to be emulated using descriptions of your data (and you will definitely
need to include a codebook) and your research questions to justify your
modeling decisions.

> Should I specify, prior to analyses, my guess as to the expected
> direction of relationships between outcomes and predictors?

Yes, definitely.

> What sorts of transformations are allowed in Project 2?

In project 2, restrict yourself to understandable transformations, and
don’t be a slave to the Box-Cox approach. The reasonable transformations
to consider are 1/y, log y, sqrt y, and y^2. Anything more complicated
than that should suggest that you consider a different modeling approach
or revision to your outcome.

> Am I allowed to use `echo=FALSE` in Project 2?

The use of `echo = FALSE` is prohibited in Project 2. If your output is
in a form that allows it, please use code-folding, so that we can show
or hide code as the reader desires. Default to showing the code, please.

> Should I add a session information command at the end of my
> presentation?

Definitely yes. Take a look, if you haven’t, at what this produces. Why
might it be useful?

> What should I name my models, and variables?

Something memorable and consistent. If you want to avoid creativity,
then call things `model_01` and `model_02`, by all means, but do that in
both the text descriptions and in your code. Don’t call the same thing
Model 1 (or my first model) in your text, but `mod_1` in your code, as
an example.

> Is it critical to actually answer my research question(s) in the
> conclusions section?

Yes.

> Should I include sanity checks in my final portfolio?

Sanity checks are an important part of your programming, but they don’t
belong in your final presentation. Neither do false starts, and
explorations that don’t lead anywhere.

> How should I describe a restricted cubic spline that I’ve fit in a
> model? Do I write out that equation with the variablename’ and
> variablename’’ in it, or … ?

Tell me how many knots were involved and show me a graph that depicts
the impact of the spline. No one explains splines without a graph. Make
a graph and use it is excellent advice for many aspects of your
presentation. Sensible graphs to accomplish this task in a multivariate
regression model include the `ggplot` with `Predict` combination or a
nomogram.

> If I have two models that aren’t very far apart in terms of
> validation, where Model 1 is much simpler but less good in terms of
> validation than Model 2, which model would you focus on?

If the validation results are at all comparable, then I’d definitely
focus on the simpler model.

> If I have a C statistic, do I need to also plot the ROC curve?

I can’t think of a compelling reason to do so. This is one of the few
places where the plot isn’t much additional help.

> Will Dr. Love provide a sample Project 2?

No, just the template.

# Need Help?

Questions about Project 2 may be directed to 431-help and the TAs as
well as to Dr. Love at any time.
