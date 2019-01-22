Instructions for 432 Project 1
================

-   [Introduction](#introduction)
    -   [Am I working alone, or in a group?](#am-i-working-alone-or-in-a-group)
    -   [What Makes an Acceptable Data Set?](#what-makes-an-acceptable-data-set)
-   [Deliverable 1. The Proposal](#deliverable-1.-the-proposal)
    -   [The Nine Parts of Your Proposal](#the-nine-parts-of-your-proposal)
        -   [Evaluating the Project 1 Proposal](#evaluating-the-project-1-proposal)
    -   [The Group Meetings](#the-group-meetings)
-   [Deliverable 2. The Portfolio](#deliverable-2.-the-portfolio)
    -   [The Twelve Parts of your Portfolio](#the-twelve-parts-of-your-portfolio)
        -   [Final Portfolio Evaluation](#final-portfolio-evaluation)
    -   [Things to consider in developing linear models for Task 10](#things-to-consider-in-developing-linear-models-for-task-10)
    -   [Things to consider in developing linear models for Task 11](#things-to-consider-in-developing-linear-models-for-task-11)

As a substantial part of your course grade, you will complete two Projects this semester. This document describes Project 1. Instructions for Project 2 will appear later in the term.

Introduction
============

It is hard to learn statistics (or anything else) passively; concurrent theory and application are essential. Expert clinical researchers and statisticians repeatedly emphasize how important it is that people be able to write well, present clearly, work to solve problems, and show initiative. This project assignment is designed to help you develop your abilities and have a memorable experience.

In Project 1, you will be analyzing, presenting and discussing a pair of regression models, specifically a linear regression and a logistic regression, describing a data set you identify.

Am I working alone, or in a group?
----------------------------------

You can choose either to work alone, or with one other person, to complete Project 1.

-   At times, we will require you to share drafts of your work with other people in small groups, but the actual data collection, analysis and report-building work is for you (or you and your partner) to do.

What Makes an Acceptable Data Set?
----------------------------------

1.  **Shareable with the World**. The data must be available to you, and shared with me and everyone else in the world (without any identifying information) as a well-tidied .csv file on 2018-02-23. If the data is from another source, the source (web or other) must be completely identified to me. Ongoing projects that require anyone's approval to share data are not appropriate for Project 1, but are likely to be appropriate for Project 2.
    -   For Project 1, you may not use any data set that was used in 431, nor may you revisit the data discussed in your 431 project, and you cannot use any data sets used in the teaching materials for 432. You may not use any data set included in [an R package that we are installing](https://github.com/THOMASELOVE/2019-432/blob/master/packages.md) this semester, other than NHANES.
    -   You **are** allowed to use NHANES data in either Project 1 **or** in Project 2, but not in both. If you do use NHANES data for Project 1, you should be combining information from at least three NHANES data sets. If you used NHANES data in your 431 project, you can use NHANES data again this semester, but you must study new outcomes.
    -   You are permitted to use BRFSS data, but you are not permitted to use data from SMART BRFSS, since we will be using that regularly in class.
2.  **Size**. A **minimum** of 100 complete observations are required on each variable. It is fine if there are some missing values, as well, so long as there are at least 100 rows with complete observations on all variables you intend to use in each model. The **maximum** data set size is 1000 observations, so if you have something larger than that, you'll need to select a subset.

3.  **Outcomes**. The columns must include at least one quantitative outcome and one binary categorical outcome. If necessary, the binary outcome can be generated from the quantitative outcome (as an example, your quantitative outcome could be resting heart rate in beats per minute, and your binary outcome could be whether the resting heart rate is below 70 beats per minute.)

4.  **Inputs**. You will need at least four regression inputs (predictors) for each of your two models. At least one of the four must be quantitative (a variable is **not** quantitative for this purpose unless it has at least 10 different, ordered, observed values), *and* at least one must be multi-categorical (with at least 3 categories, each containing a minimum of 30 subjects) for each model. Your other inputs can represent binary, multi-categorical or quantitative data. You can examine different candidate predictors for each outcome, or use the same ones in both your linear and logistic regression models. Depending on your sample size, you can study more regression inputs. Specifically, if you have N complete observations in your data set, you are permitted to study up to 4 + (N-100)/100 candidate regression inputs, rounding down.

Deliverable 1. The Proposal
===========================

The proposal is due Friday 2018-02-15 at 2 PM. Submit via [Canvas](https://canvas.case.edu).

Your proposal will include - (a) a `.csv` file of the data you have chosen - (b) a R Markdown file containing the information listed below, and - (c) an HTML document which is the unedited result of knitting your Markdown file.

The Nine Parts of Your Proposal
-------------------------------

The nine pieces of information we should find in the Markdown and HTML versions of your proposal are:

1.  Complete information on the source of the data: how did you get it, how was it gathered, by whom, in what setting, for what purpose, and using what sampling strategy.
2.  Code to load the raw `.csv` file into a tibble, and tidy/clean up the data to be useful for your modeling work.
3.  A listing of the tibble, with all variables correctly imported (via your code) as the types of variables (factor/integer/numeric, etc.) that you need for modeling. Be sure that your listing specifies the number of rows and number of columns in your tidy data set.
4.  A description (one or two sentences) of who or what the subjects (rows) are in your data set.
5.  A code book, which provides, for each variable in your tibble, the following information:
    -   The name of the variable used in your tibble
    -   The type of variable (binary, multi-categorical, quantitative)
    -   The details for each variable
        -   if a categorical variable, what are the levels, and what % of subjects fall in each category
        -   if a quantitative variable, what is the range of the data, and what are the units of measurement
        -   if there are missing data, tell us how many observations are missing, and why, if you know why.
6.  A sentence or two for each variable (column) providing a description of what the variable measures or describes, in English.
7.  A sentence or two telling us what you will use your linear regression model to explain or predict, *followed by* a sentence or several telling us very precisely which (quantitative) variable will serve as your outcome in your linear regression model, and which four (or more) candidate predictors you intend to use for that model.
8.  A sentence or two telling us what you will use your logistic regression model to explain or predict, *followed by* a sentence or several telling us very precisely which (binary) variable will serve as your outcome in your logistic regression model, and which four (or more) candidate predictors you intend to use for that model.
9.  An affirmation that the data set meets all of the requirements specified here, most especially that the data can be shared freely over the internet, and that there is no protected information of any kind involved. You need to be able to write "I am certain that it is completely appropriate for these data to be shared with anyone, without any conditions. There are no concerns about privacy or security." If you are unsure whether this is true, select a different data set.

### Evaluating the Project 1 Proposal

-   Your project will be evaluated on a scale of 0-10, with one point for getting all of the necessary materials (.csv, .Rmd and HTML) in and then one additional point for each of the nine tasks if they are successfully completed.
-   If you receive a grade lower than 10, you will need to redo until you reach 10. Redos are expected within 48 hours of receipt of the redo request.

The Group Meetings
------------------

-   On 2019-02-21, you will meet during class time to present your proposal work, and any subsequent work you have completed on your portfolio. This important session will give you the opportunity to present a piece of your work to some of your colleagues, and get meaningful feedback from them on the decisions you have made. The TAs will run this session, as Dr. Love will be out of town.

-   We hope to set aside some time on 2019-03-07 for a follow-up meeting to nail down last questions in groups, but we're not sure we can promise that yet.

Deliverable 2. The Portfolio
============================

The portfolio of Project 1 Materials is due Friday 2018-03-15 at 2 PM. Yes, that is the Friday of Spring Break. Submit your work via [Canvas](https://canvas.case.edu).

Your final portfolio will include - (a) a `.csv` file of the data, - (b) a R Markdown file containing the 12 pieces of information listed below, and - (c) an HTML document which is the unedited result of knitting your Markdown file.

The Twelve Parts of your Portfolio
----------------------------------

These tasks should absolutely be built up from your proposal, by adding the last three sections to the work you did there.

-   Tasks 1-9. The materials from your proposal, after editing, as needed, to reflect what you actually did and clarifying any points of confusion.
-   Task 10. A section on your linear regression model. This should include all relevant code used to prepare your final results. We should be easily capable of finding:
    -   Your approach to capturing potential non-linearity. What did the Spearman rho-squared plot suggest, and how did you spend your degrees of freedom?
    -   Your variable selection process in developing the model, which should be more than just a stepwise approach. Why did you select the predictors you did?
    -   Your calibration and validation results. What is an appropriate estimate of the likely performance of this model for new data, according to a validated R-squared statistic?
    -   An appropriate summary of the final model you landed on, including a listing of the equation, a description of the effect sizes, and an annotated nomogram with a demonstration of a prediction (and appropriate prediction interval) for a new subject of interest.
    -   Be sure to read and heed the section 10 advice below.
-   Task 11. A section on your logistic regression model.
    -   Your approach to capturing potential non-linearity. What did the Spearman rho-squared plot suggest, and how did you spend your degrees of freedom?
    -   Your variable selection process in developing the model, which can be a stepwise approach here. Why did you select the predictors you did?
    -   Your calibration and validation results. What is an appropriate estimate of the likely performance of this model for new data, according to a validated C statistic?
    -   An appropriate summary of the final model you landed on, including a listing of the equation, a description of the effect sizes, and an annotated nomogram with a demonstration of a predicted probability of having the outcome of interest for a new subject.
    -   Be sure to read and heed the section 11 advice below.
-   Task 12. A 100-250 word discussion of your thoughts on the process.
    -   What was substantially harder or easier than you expected?
    -   What do you wish you'd known at the start of this process that you know now?
    -   What was the most confusing part of doing the project?
    -   What was the most useful thing you learned while doing the project?

### Final Portfolio Evaluation

To receive a B ...

1.  Meet all submission requirements, on time, with code that works seamlessly with the data you provide.
2.  Complete all of the elements from the proposal (tasks 1-9)
3.  Present a curated but detailed, appropriate set of linear regression analyses that leads, inexorably, to the selection of a "best choice" model for your data. See the advice on task 10 below.
4.  Present a curated but detailed, appropriate set of logistic regression analyses that leads, inexorably, to the selection of a "best choice" model for your data. See the advice on task 11 below.
5.  Present your conclusions/reflections about (a) the process, (b) your data and (c) your models (task 12), being sure to address (a), (b) and (c) effectively in at least 2-3 sentences apiece.
6.  Present attractive and easy-to-understand graphs that stand on their own thanks to good labeling, well-constructed tables whose message is clear, and clear, nicely presented code.
7.  Build and present output that is courteous to the reader, in that it is pleasing to the eye, and in particular doesn't include useless information, like warning messages the reader doesn't need to heed, or long listings of raw data or other overpowering materials. If it takes longer to scroll through your project than the **example I have provided**, you are on the wrong track.
8.  Avoid crippling mistakes, incomplete sentences, and clearly inappropriate conclusions.

A project receiving an "A" grade will **not** be longer, rather it will be better, with more concentrated "useful" stuff throughout, and with more evidence of careful decision-making about what goes into each piece to make it as effective as possible. Dazzle us with your very best work. **Clarity** is the ultimate goal. We seek clear thinking, clear code, clear modeling and clear conclusions.

Our best advice: To write and code clearly and effectively, have someone else read and criticize your work.

Things to consider in developing linear models for Task 10
----------------------------------------------------------

Every bit of your output should be commented on in your work. No output without commentary. We envision your final presentation will show no more than 8 of these items in detail. As few as 4-5 might be sufficient. Many of you will wind up running nearly all of these things, some on multiple models, and then choosing from among them wisely in presenting your final analyses. That is the goal.

Your presentation needs to land on a single, final model, using both statistical and non-statistical considerations to make a decision. Your presentation may need to explore other models, but this should be done as a way of helping us understand the reasons for your final selection, not as a way of impressing us with the amount of effort you've put into the project. We're interested in clarity, and demonstrated understanding of variation, but not volume.

1.  A fitted model using `lm` including an assessment of confidence intervals associated with the fitted coefficients, and an overall ANOVA F test.
2.  A fitted model using `ols` including an assessment of summary statistics like R-square, adjusted R-square and the root mean squared error.
3.  A summary plot of predictor effects with meaningful confidence intervals, appropriately interpreted.
4.  A graph (perhaps with a table as well) showing predictions for new observations of interest.
5.  A partitioning of your sample into training and test batches, with an effort to assess the quality of predictions in a test sample for several candidate models. This is particularly appropriate in combination with things like the next two items on this list.
6.  A "best subsets" set of four graphs used to help justify variable selection decisions, followed by additional work to make a final choice.
7.  A Spearman rho-squared plot leading to an analysis incorporating non-linear predictor terms, an assessment of whether those non-linear terms are helpful, and if so, a nomogram to help illustrate the effect of non-linear predictors on your outcome.
8.  The use of the lasso approach to identify variables (main effects) which might be productively included in your model.
9.  An effort to validate the summary statistics of your model or models, perhaps with a backwards stepwise approach baked in to validate variable selection at the same time, but also perhaps not.
10. An effort to describe how well your model is calibrated, and where predicted values are more or less trustworthy as a result.
11. An assessment of residuals, leverage and influence that helps guide you to meaningful conclusions - and isn't just a list of the biggest outliers for a particular model-data combination.
12. If there are a meaningful number of missing observations in your study, a complete case analysis to avoid problems with missing data, followed by a model fit using multiple imputation appropriately, with a careful judgment as to the impact of missingness on your conclusions about the data. In general, it is likely that imputation will become more important the more missingness is in your data, but it's worth it to find out.
13. If you are sampling from a larger pool of data, an attempt to see if the conclusions you draw hold up in a newly drawn sample, or perhaps if predictions you make appear to be effective in another, different, sample.

Things to consider in developing linear models for Task 11
----------------------------------------------------------

As with linear models, it is **not** a good idea for all of these elements to appear in your final project, and you are likely going to want to limit yourself in Task 11 to a detailed presentation of 4-8 of these. Choose wisely. Repeating the key advice from above ...

Your presentation in Task 11 needs to land on a single, final model, using *both* statistical and non-statistical considerations to make a decision. Your presentation may need to explore other models, but this should be done as a way of helping us understand the reasons for your final selection, not as a way of impressing us with the amount of effort you've put into the project. We're interested in clarity, and demonstrated understanding of variation, but not volume.

1.  A fitted model using `glm` including an assessment of confidence intervals associated with the (exponentiated) fitted coefficients.
2.  A fitted model using `lrm` including an assessment of summary statistics like Nagelkerke R-square, C and the Brier score, and an overall likelihood ratio test.
3.  A summary plot of predictor effects with meaningful confidence intervals, appropriately interpreted.
4.  A graph (perhaps with a table as well) showing predictions for new observations of interest.
5.  A Spearman rho-square plot leading to an analysis incorporating non-linear predictor terms, an assessment of whether those non-linear terms are helpful, and if so, a nomogram to help illustrate the effect of non-linear predictors on your outcome.
6.  Actually, a nomogram is useful in logistic regression (especially if it describes fitted probabilities) even if you don't include any non-linear predictors.
7.  An effort to validate the summary statistics of your model or models, perhaps with a backwards stepwise approach baked in to validate variable selection at the same time, but also perhaps not.
8.  An effort to describe how well your model is calibrated, and where predicted values are more or less trustworthy as a result.
9.  An assessment of influence that helps guide you to meaningful conclusions - and isn't just a list of the biggest outliers for a particular model-data combination.
10. If there are a meaningful number of missing observations in your study, a complete case analysis to avoid problems with missing data, followed by a model fit using multiple imputation appropriately, with a careful judgment as to the impact of missingness on your conclusions about the data. In general, it is likely that imputation will become more important the more missingness is in your data, but it's worth it to find out.
11. If you are sampling from a larger pool of data, an attempt to see if the conclusions you draw hold up in a newly drawn sample, or perhaps if predictions you make appear to be effective in another, different, sample.
12. If your binary outcome uses an arbitrary cutpoint for an underlying quantitative outcome, a sensitivity analysis addressing the question of what happens to your conclusions if you change cutpoints.
