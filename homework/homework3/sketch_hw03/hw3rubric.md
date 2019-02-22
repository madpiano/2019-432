432 Homework 3 Rubric
================
Thomas E. Love
Due 2019-02-22. Version: 2019-02-22

-   [General](#general)
-   [Question 1 (20 points)](#question-1-20-points)
-   [Question 2. (10 points)](#question-2.-10-points)
-   [Question 3 (20 points)](#question-3-20-points)
-   [Roster Elements](#roster-elements)

General
=======

-   Subtract a point or two in the grade for each question, for each typographical or grammatical error you catch, or for not writing responses in complete sentences, up to a maximum of 25% of the available points for that question.
-   If the student gets the work in after 2 PM on 2019-02-22, mark the time when they submitted the results in the General Problems section, and score them with 10 points in the Penalties column if they get the work in by 3 PM, and 25 points in the Penalties column if they get it in later than that.
-   If they submit the Rmd but not the HTML or vice versa, please note that in the General section, and remind the student via their preferred email to get the completed work in. If they succeed in getting in the full assignment by 24 hours after you remind them, score them with 5 points in the Penalties column from the entire assignment. Otherwise, score them with 15 points in Penalties.
-   Assign a 1 point penalty for neglecting to include the session information.
-   Penalties are cumulative, so late incomplete work could cost as much as 40 points (25 for late initial submission, and 15 more for not fixing the problem when you point it out.)

Question 1 (20 points)
======================

To receive 20 points, the students should:

-   (2 points) correctly set up the data to run regsubsets
-   (3 points) successfully perform the exhaustive search and identify seven models
-   (2 points) correctly plot the summaries of those models for adjusted R<sup>2</sup>, corrected AIC, BIC and C<sub>p</sub>
-   (3 points) use their plots to identify candidate models appropriately (whether they choose 5 or 6 for C<sub>p</sub> is ok with me)
-   (3 points) perform 5-fold cross-validation correctly on each of those candidate models
-   (2 points) come to an appropriate conclusion based on their RMSE and MAE and select a model (if the two statistics differ, so long as they choose one of the two "winners")
-   (5 points) identify the final choice of model explicitly, as part of a written explanation of their conclusions.
-   Subtract 2 points off of their total score if they fail to deal with the missing data in a sensible way - for instance, deleting all of the people with missing ldl, even though ldl isn't one of the variables to be studied.
-   Subtract 2 points if they fail to treat the multi-categorical variables as factors.

-   A reasonable but not completely successful attempt should receive points for all of the pieces above that are correct. If they made a mistake early on, but then did everything else correctly in light of their early mistake, they should receive credit for the later pieces.
-   A completely successful effort will thus receive the full 20 points.
-   Provide comments to all students who score less than 20 for any reason other than typos.

Question 2. (10 points)
=======================

-   Award up to 5 points for generating an appropriate Spearman plot, meaning one containing all necessary variables.
    -   If they include some other variables, drop 2 points.
    -   If they've not dealt with missingness before running the plot, drop 1 point.
    -   If they've included a multi-categorical variable as a character rather than as a factor, drop 2 points.
-   Award up to 5 additional points for interpreting whatever they generate correctly.
    -   The plot only tells us where to start looking for non-linear effects. It doesn't tell us that those effects will be meaningful or large or useful or significant or anything like that. If what they write claims that the plot does more than in actually does, they shouldn't get more than 2/5 points on this part of the question.
-   A completely successful effort will thus receive the full 10 points.
-   Provide comments to all students who score below 9/10.

Question 3 (20 points)
======================

-   Award up to 8 points for the initial little essay, giving full credit if they write down an actual piece of advice that makes sense to you, assuming they provide a clear indication of where it came from.
    -   A reasonable piece of advice with no citation should get 6/8 on this part.
-   Award up to 12 additional points for the second little essay, awarding 10 points for most students who do this in a reasonable way, but the full 12 points for the top 5 or so essays overall.
-   Provide comments to all students who score below 16/20 here for reasons other than just typos or grammatical issues.

Roster Elements
===============

<table style="width:75%;">
<colgroup>
<col width="12%" />
<col width="19%" />
<col width="43%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Variable</th>
<th>Maximum Score</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">HW3 Q1</td>
<td>20</td>
<td>Q1 score</td>
</tr>
<tr class="even">
<td align="right">HW3 Q2</td>
<td>10</td>
<td>Q2 score</td>
</tr>
<tr class="odd">
<td align="right">HW3 Q3</td>
<td>20</td>
<td>Q3 score</td>
</tr>
<tr class="even">
<td align="right">HW3 Penalties</td>
<td>?</td>
<td>Points lost for lateness/general problems (usually this is 0)</td>
</tr>
<tr class="odd">
<td align="right">HW3 General Problems Leading to Penalties</td>
<td>-</td>
<td>Notes on problems with submission / lateness</td>
</tr>
<tr class="even">
<td align="right">TA Comments to Students on HW3</td>
<td>-</td>
<td>Comments to Students on their responses to Q1 - Q3.</td>
</tr>
<tr class="odd">
<td align="right">HW3 Total</td>
<td>out of 50</td>
<td>Q1 + Q2 + Q3 - Penalties</td>
</tr>
</tbody>
</table>
