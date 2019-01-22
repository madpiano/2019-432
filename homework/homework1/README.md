432 Homework 1
================

General Instructions
====================

Deadline: 2019-02-01 at 2 PM. Submit via [Canvas](https://canvas.case.edu/).

Your response should include an R Markdown file and an HTML document that is the result of applying your R Markdown file to the `hbp330.csv` data, available in the data subfolder for this homework, as well as on our Data and Code page.

Start a separate R Project for Homework 1, as your first step, and place the data in that project's directory or (perhaps better) in a data sub-directory.

The `hbp330` data
-----------------

The (simulated) data describe 330 patients with hypertension (high blood pressure) diagnoses who receive primary care in one of two practices. The data are based on real clinical information, but with a small amount of noise included in every variable.

<table style="width:100%;">
<colgroup>
<col width="10%" />
<col width="89%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right"><code>subject</code></td>
<td>separate code for each subject (A001 = first patient in practice A)</td>
</tr>
<tr class="even">
<td align="right"><code>practice</code></td>
<td>primary care practice, labels are A and B</td>
</tr>
<tr class="odd">
<td align="right"><code>provider</code></td>
<td>primary care provider (14 levels, each practice has 7 providers in these data)</td>
</tr>
<tr class="even">
<td align="right"><code>age</code></td>
<td>subject's age as of 2018-01-01</td>
</tr>
<tr class="odd">
<td align="right"><code>race</code></td>
<td>subject's race (4 levels: Asian/P[acific] I[slander], Black / A[frican]-A[merican], White, Multi-Racial)</td>
</tr>
<tr class="even">
<td align="right"><code>eth_hisp</code></td>
<td>is subject of Hispanic/Latino ethnicity? Yes or No</td>
</tr>
<tr class="odd">
<td align="right"><code>sex</code></td>
<td>subject's sex (F or M)</td>
</tr>
<tr class="even">
<td align="right"><code>insurance</code></td>
<td>subject's primary insurance (Medicare, Commercial, Medicaid, Uninsured)</td>
</tr>
<tr class="odd">
<td align="right"><code>income</code></td>
<td>estimated median income of subject's home neighborhood (via American Community Survey, to nearest $100)</td>
</tr>
<tr class="even">
<td align="right"><code>hsgrad</code></td>
<td>estimated percentage of adults living in the subject's home neighborhood who have graduated from high school (via American Community Survey, to the nearest percent)</td>
</tr>
<tr class="odd">
<td align="right"><code>tobacco</code></td>
<td>tobacco use status (current, former, never)</td>
</tr>
<tr class="even">
<td align="right"><code>depdiag</code></td>
<td>does subject have depression diagnosis? Yes or No</td>
</tr>
<tr class="odd">
<td align="right"><code>height</code></td>
<td>subject's height in meters, rounded to two decimal places</td>
</tr>
<tr class="even">
<td align="right"><code>weight</code></td>
<td>subject's weight in kilograms, rounded to one decimal place</td>
</tr>
<tr class="odd">
<td align="right"><code>ldl</code></td>
<td>subject's LDL cholesterol level, in mg/dl</td>
</tr>
<tr class="even">
<td align="right"><code>statin</code></td>
<td>does subject have a current prescription for a statin medication? 1 = Yes or 0 = No</td>
</tr>
<tr class="odd">
<td align="right"><code>bpmed</code></td>
<td>does subject have a current prescription for a blood pressure control medication? 1 = Yes or 0 = No</td>
</tr>
<tr class="even">
<td align="right"><code>sbp</code></td>
<td>subject's most recently obtained systolic blood pressure, in mm Hg</td>
</tr>
<tr class="odd">
<td align="right"><code>dbp</code></td>
<td>subject's most recently obtained diastolic blood pressure, in mm Hg</td>
</tr>
</tbody>
</table>

Question 1. (25 points)
-----------------------

Build a Table 1 to compare the subjects in practice A to the subjects in practice B on the following nine variables: age, race, Hispanic ethnicity, sex, primary insurance, body mass index, BMI category, and systolic and diastolic blood pressure. Make the Table as well as you can within R, and display the result as part of your HTML file. **Include a description of the results of your Table 1 that does not exceed 100 words, using complete English sentences**.

-   Be sure that your table specifies the number of subjects in each practice.
-   Note that you'll have to deal with some missingness in the data, in an appropriate way. Be sure to specify what you did with the missing data (and how much you had to deal with) in a footnote to the table. I would just list the notes as a bulleted list in the Markdown file, and never leave Markdown during the entire enterprise. It's not usually appropriate to report results that include imputation in a Table 1, so I expect the best choice is to build a note specifying the amount of missing data.
-   Be sure, too, to make reasoned choices about whether means and standard deviations or instead medians and quartiles are more appropriate displays for the quantitative variables, and whether or not to use exact tests for categorical ones. Include your reasons in a footnote to the table.
-   Note that body mass index (BMI) and BMI category are not supplied in the data, although you do have height and weight. **So, you'll have to calculate the BMI and add it to the data set.** If you don't know the formula for BMI, you have Google to help you figure it out.
-   For BMI categories, use the four groups specified in the [How is BMI interpreted for Adults section of this description](https://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html) of Adult BMI by the Centers for Disease Control. **Again, you'll need to use your calculated BMI values and then create the categories in your data set, and you'll need to figure out a way to accurately get each subject into the correct category.**

Question 2. (10 points)
-----------------------

Does which **practice** a person attends seem to have a meaningful impact on their **systolic blood pressure**, adjusting for whether or not they are on a **blood pressure medication**? Decide whether your model should include an interaction term sensibly, and then fit your choice of model and interpret and display the findings carefully. Be sure to provide a written explanation of your findings, in complete sentences. Responses without graphs are not complete.

Question 3. (10 points)
-----------------------

Does the addition of the subject's **age** add meaningful predictive value to the model you developed in question 2? Does it change the nature of the conclusions you can draw from the model? How do you know? Be sure to provide a written explanation of your findings, in complete sentences, to accompany any output you choose to include. Responses without graphs are not complete.

Question 4. (5 points)
----------------------

Please specify your GitHub user name. If you don't have a (free) GitHub account, get one. If you sign up for a student account using your case.edu address, you will get access to unlimited (and free) private repositories. That's the ideal plan.
