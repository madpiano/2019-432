432 Homework 2
================

General Instructions
====================

Deadline: 2019-02-08 at 2 PM. Submit via [Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document that is the result of applying your R Markdown file to the `hbp330.csv` data, available in the data subfolder for this homework, as well as on our Data and Code page.

Start a separate R Project for Homework 2, as your first step, and place the data in that project's directory or (perhaps better) in a data sub-directory.

Question 1. (20 points)
-----------------------

Consider the `hbp330` data used in Homework 1. Fit and interpret an ANOVA model to evaluate the effect of `race` on `income`. What conclusions can you draw? In developing an answer, please decide whether collapsing the `race` factor into a smaller number of levels would be sensible in this case. You'll also want to assess the role of missingness in this work, and consider removing the cases with missing values (or imputing them with simple imputation) if they include only a small fraction of the total sample. Be sure to provide a written explanation of your findings, in complete sentences.

Question 2. (15 points)
-----------------------

Now fit a two-factor ANOVA model to evaluate the effects of `race` (either collapsed or uncollapsed, as you decide) and `sex` on `income`. What can you conclude? Be sure to provide a written explanation of your findings, in complete sentences.

Question 3. (15 points)
-----------------------

Now attempt to fit a two-factor ANOVA model to evaluate the effect of `race` and `insurance` on `income`. A problem should occur when you fit this `race` and `insurance` model, that doesn't happen, for instance, when you evaluate the effects of both `race` and `sex` on `income`. So what happens when you fit the `race`-`insurance` model, exactly, and why does it happen?

-   Here's a hint...

> R may well warn you about "singularities" in your output for Question 3, but we'd like a clearer answer than that from you. To obtain it, consider exploratory data analysis, specifically the value of counting things. In particular, ask yourself questions like "How many people fall into the levels of the product term I've created?" or "What if I build a table, say with race in the rows and insurance in the columns - how many people fall into each cell of that table?" as a way to figure out what the real problem is.
