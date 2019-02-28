# 432 Spring 2019 Class 10: 2019-02-28

- Professor Love's Slides are now available: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class09/432_2019_slides10.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class09/432_2019_slides10.Rmd). 
    - We'll actually start with the restricted cubic splines material in slide 42 of the Class 09 slides, as reposted above.
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. [Quiz 1](https://github.com/THOMASELOVE/2019-432/tree/master/quizzes) is **available now**, and is due at 7 AM on 2019-03-05.
    - [Visit the Quiz page](https://github.com/THOMASELOVE/2019-432/tree/master/quizzes#quiz-1) for links to all necessary materials, and detailed instructions.
2. [Project 1](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) is due at 2 PM on 2019-03-15.
    - A complete draft of Tasks 1-11 (including analyses) for Project 1 is [here in HTML](http://rpubs.com/TELOVE/project1_demo_2019-432), and [here in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project1-demo/432_2019_project1_demo_full_draft.Rmd).
    - As you'll note below, I've augmented [the Project 1 Instructions](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) with some materials on spending degrees of freedom and adding non-linear terms to a model.

## Homework 3 Grades

Grades for Homework 3 are now in [the Homework Roster](http://bit.ly/432-2019-homework-results) at http://bit.ly/432-2019-homework-results. You'll need your homework code, which Dr. Love emailed you on 2019-02-07.

## Minute Paper Comments

Are available for your review at http://bit.ly/2019-432-minute9-results.

## I've augmented the [Project 1 Instructions](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) to include the following materials...

## On "Spending" Degrees of Freedom and Project 1

The number of degrees of freedom that you are "spending" to fit any particular model is related to the sample size of your data, and the number of coefficients you are fitting in that model.  Paying attention to how you are "spending" degrees of freedom is an important part of fitting any prediction model. If you include more regression coefficients in a model than you can reasonably support with the sample size you have, then you will run into all sorts of problems. In addition, if you fit a whole bunch of models, and compare each in terms of how well it fits to the outcome, then you will definitely run into meaningful problems in terms of the model not performing as well in new data as it appears to perform in your current data. 

If you have a model that currently uses 8 degrees of freedom, that means you've spent 8 df to fit it, not that you have exactly 8 df left to spend, or anything like that.

### What to do for Project 1

The # of degrees of freedom that I want you to spend in Project 1 is small. 

- In a linear model, it is, essentially, your sample size divided by 20, but see the details below on what counts as spending degrees of freedom.
- In a logistic model, if your sample size is n, then the number of degrees of freedom you have to spend is, somewhere between n/50 and n/100, and again, see below for details.

### The Choice You Need to Make (in Project 1)

For many people, the choices in fitting models for Project 1 boil down to, in essence, two related issues:

1. Which predictors will we include in our model?
2. What sort of non-linear terms (and how many of them) will we include in our model?

So, what to do about this? I encourage you to follow either of two paths in doing Project 1. (Do A or B, but not both.)

*Choice A.* If you have a large set of predictors to consider and want to use a statistical procedure to identify which variables should be included in your model, use methods like a kitchen sink approach, stepwise regression, best subsets or some combination to identify several different candidate models and then compare their fit using cross-validation, OR

*Choice B.* If you are settled on which predictors you want to use, use the Spearman rho-squared plot to identify candidate variables for non-linear terms, and add 1-3 such non-linear terms to your model, perhaps comparing the results using cross-validation or through validation of regression summaries like R-square or the C statistic. 

- If you're going to use A, then the Spearman rho-squared plot can be fit after you complete step A, to indicate what predictors might be worthy of looking for non-linearity if new data arrived, but I wouldn't fit any non-linear terms.
- If you're going to use B, then I would take your set of predictors as settled and focus on non-linear terms.

It's your choice whether to use A or B. In either case, I would validate the summary statistics (R^2^ and MSE) after fitting the model.

In either case, for a linear regression, decide in advance all of the models you are going to fit to your outcome. 

### The "20:1 Rule" for Linear Regression

Before you fit any of them, I would verify that your modeling process has not spent more degrees of freedom than you can afford to spend, by the **20:1 rule**. That means that you should:

1. count up the number of degrees of freedom that will be used in each model that you fit to your outcome (so if you plan to use best subsets to produce eight different models, then you used all of the degrees of freedom used by each of those eight models or if you fit four different candidate models, each with 4 degrees of freedom used, that's 16.) Call that total number of degrees of freedom P. 
2. Then take your sample size (the number of complete, non-imputed values in your data set used to fit the models) and call that N. 
3. N/P should be at least 20. 
    - If it's not, you need to rethink your modeling plan until it is.
    - With the small sample sizes I've forced on you, this will mean making some tough decisions. 
    - What may push you towards *Choice B* above is that it's less costly in terms of degrees of freedom, because you don't need to count using the Spearman plot as using up degrees of freedom. 
    - If you're cross-validating, maybe you can get away with N/P being as small as 15.

### For Logistic Regression

For a logistic regression, on the other hand, the sample size standards are even higher. There, N/P should really be greater than 100, but I will be OK if yours is as small as 50. 

This will push you to not consider more than 1-2 non-linear terms if you're following *Choice B*, and to fit a fairly small number of predictors (4-8 in most cases) if you're following *Choice A*.

### What Kind of Non-Linear Terms Should I Consider in Project 1?

As for what type of non-linear terms you should consider in Project 1 should you decide to go down that path, look at the Spearman rho-squared plot and identify the 1-3 predictors that are furthest to the right. Don't fit non-linear terms to the rest of your predictors.

- If the (apparently strongest - furthest to the right) predictor is quantitative, you should be thinking first about a restricted cubic spline with 4 knots, maybe 5 if it won't be a problem for your sample size. 
- If the largest rho-square is associated with a binary or a multi-categorical predictor, create an interaction term with the second-largest rho-squared predictor. 
- If you still have degrees of freedom you're willing to spend after this, proceed down to the second largest predictor in terms of rho-squared, and proceed similarly to the third largest after that, if you like, but don't include more than 3 non-linear terms in Project 1, no matter how large your sample is.

## Using Splines (for discussion today)

Paul C. Lambert has [some great interactive graphs](https://pclambert.net/interactivegraphs/) to explain many interesting ideas in biostatistics. Today, we'll look specifically at his materials on **splines**, which include visualizations describing:

- [the number and location of knots](https://pclambert.net/interactivegraphs/spline_eg/spline_eg)
- [continuity restrictions](https://pclambert.net/interactivegraphs/spline_continuity/spline_continuity)
