432 Homework 2 Rubric
================
Thomas E. Love
Due 2019-02-08. Version: 2019-02-08

# General

  - Subtract a point or two in the grade for each question, for each
    typographical or grammatical error you catch, or for not writing
    responses in complete sentences, up to a maximum of 25% of the
    available points for that question.
  - If the student gets the work in after 2 PM on 2019-02-08, mark the
    time when they submitted the results in the General Problems
    section, and score them with 10 points in the Penalties column if
    they get the work in by 3 PM, and 25 points in the Penalties column
    if they get it in later than that.
  - If they submit the Rmd but not the HTML or vice versa, please note
    that in the General section, and remind the student via their
    preferred email to get the completed work in. If they succeed in
    getting in the full assignment by 24 hours after you remind them,
    score them with 5 points in the Penalties column from the entire
    assignment. Otherwise, score them with 15 points in Penalties.
  - Penalties are cumulative, so late incomplete work could cost as much
    as 40 points (25 for late initial submission, and 15 more for not
    fixing the problem when you point it out.)

If a student neglects to put the session information at the end of this
homework, just remind them in the comments. Don’t assess any penalties
for that.

# Question 1 (20 points)

  - Award up to 10 points for fitting the correct model.
      - Do not penalize if they collapsed to 2, or 3 categories, or if
        they didn’t collapse at all, assuming they went through with it
        appropriately in their interpretations.
      - If they transformed the `income` data in a reasonable way, fine.
        If they didn’t, still fine.
  - Award up to 5 additional points for interpreting the ANOVA model to
    evaluate the effect of race on income, and conclude that there are
    no statistically significant differences in income across race
    groups, if that’s what their model says.
      - Again, depending on how they collapse and whether they transform
        `income`, they might get a different answer.
  - Award up to 5 additional points for the Question as a whole if they
    come to a reasoned conclusion regarding the issue of whether they
    should collapse the race factor into a smaller number of levels.
      - If they decided to collapse or didn’t decide to collapse, that’s
        OK, but they need to show that they looked into it in a sensible
        way, and justify whatever decision they made.
  - A completely successful effort will thus receive the full 20 points.
  - A reasonable but not completely successful attempt should usually
    receive 14-17 points, total. Provide comments to all students who
    score below 18/20.

# Question 2. (15 points)

  - Award up to 5 points for developing an appropriate plot to assess
    interaction, and interpreting it correctly.
  - Award up to 5 points for fitting a correct model with either a
    collapsed or uncollapsed variable for `race`.
  - Award up to 5 additional points for a correct conclusion (If they
    did what I intended, the conclusion would be that there aren’t any
    statistically significant differences in `income` attributable to
    either `race_3` or `sex`. If they did something else, the answer
    sketch should provide the indication as to the correct response in
    that setting.)
  - A completely successful effort will thus receive the full 15 points.
  - A reasonable but not completely successful attempt should usually
    receive 10-12 points, total. Provide comments to all students who
    score below 13/15.

# Question 3 (15 points)

  - Award up to 10 points for fitting the ANOVA model and the summary
    with the uncollapsed insurance variable and identifying the
    appropriate problem (the NA estimates).
  - Award up to 5 additional points for identifying the correct
    conclusion about why they are getting the NAs (the lack of data in
    the Other/Commercial and Other/Uninsured groups).
  - If they don’t identify what the problem is, because they fit a model
    that avoids it (probably by collapsing to only two levels of race)
    you should award no more than 12/15 for question 3. You can indicate
    this problem on the Comments section by writing “Q3: missed the
    problem because you ran ANOVA on only two categories of race.”
  - If they don’t identify what the problem is because they failed to
    use `summary` on their ANOVA model, then you should award no more
    than 10/15 for question 3. You can indicate this problem in the
    Comments section by writing “Q3: missed the problem because you
    failed to run summary on the ANOVA model.”
  - If they do both of those things - both fit a model with just two
    levels of race and also fail to use `summary`, award them no more
    than 8/15 on Question 3.
  - Provide comments to all students who score below 14/15 here for
    reasons other than just typos or grammatical
issues.

# Roster Elements

|                                  Variable | Maximum Score | Details                                                       |
| ----------------------------------------: | ------------- | ------------------------------------------------------------- |
|                                    HW2 Q1 | 25            | Q1 score                                                      |
|                                    HW2 Q2 | 15            | Q2 score                                                      |
|                                    HW2 Q3 | 15            | Q3 score                                                      |
|                             HW2 Penalties | ?             | Points lost for lateness/general problems (usually this is 0) |
| HW2 General Problems Leading to Penalties | \-            | Notes on problems with submission / lateness                  |
|            TA Comments to Students on HW2 | \-            | Comments to Students on their responses to Q1 - Q3.           |
|                                 HW2 Total | out of 50     | Q1 + Q2 + Q3 - Penalties                                      |
