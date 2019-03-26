# 432 Spring 2019 Class 15: 2019-03-26

- Professor Love's Slides are posted above: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/432_2019_slides15.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/432_2019_slides15.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

1. The [Minute Paper after Class 15](http://bit.ly/432-2019-minute15) is available at http://bit.ly/432-2019-minute15. Please complete it by tomorrow at 2 PM.
2. [Quiz 1 Honors Opportunity](https://github.com/THOMASELOVE/2019-432/blob/master/quizzes/quiz1_honors/README.md) Revision (if needed) due at 2 PM on **Monday** 2019-04-01. Submit via [Canvas](https://canvas.case.edu/).
    - My grades on all first attempts, and specification as to whether you can revise will be available by class time Thursday.
3. [Project 2 Registration and Scheduling Form](http://bit.ly/432-2019-project2-registration) due at **9 AM** on Monday 2019-04-08.
4. [Homework 5](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework5) due at 2 PM on Friday 2019-04-12. Submit via [Canvas](https://canvas.case.edu/).

## Quiz 1 Honors Opportunity Comments on First Attempts

**POST-CLASS UPDATE**: I have graded all questions for all students. Results appear at http://bit.ly/432-2019-homework-results.

- 13 students passed on their first attempt, with 4 scores of 5/5 and 9 more of 4/5.
- All remaining students (25/38) get one more opportunity to do this, and it is due at 2 PM Monday 2019-04-01.
    - In many cases, I've provided feedback on responses that were scored as correct, perhaps indicating problems with syntax, or spelling, but also in some cases details on the analytic work. I expect you to address those issues in your revision, should you need to do one, even though you already got the point for that question.
    - The most common grade on this first attempt was in fact 3/5. 

Here are a few general comments:

- Specific feedback regarding Question 1 includes...
    - Suppose you have an odds ratio below 1 to report. You might say that person A has odds that are 0.68 times as high, or 68% as large as person B, but not that person A has odds that are 0.68 times higher, or 0.68 times greater.
    - If you had an odds ratio above 1 to report, you might say that person A has odds that are 33% higher, or 1.33 times as high, but not 1.33 times higher than person B.
    - Be careful with the direction you imply with your response to Question 1. Some people have the relationship backwards. Remember what "treatment" and "goodoutcome" are.
    - If the treated subject has 1.2 times the odds of an outcome that the control subject does, does that mean that the control subject has 1.2 times the odds of not having the outcome that the treated subject does? Yes, but it's usual to describe the relationship between an outcome and "having the treatment" rather than "not having the treatment"
    - If the odds with A are 60% of the odds with B, does that mean that moving from B to A yields a 60% decrease in odds? Nope. For example, if A has odds of 0.5 and B has odds of 3.0, then moving from B to A would decrease the odds by 2.5, which is 83.33% of the odds for B.
- In Question 2, some people have the right idea, but the wrong comparison, or wrong description of what's happening to determine the levels of size that are compared. How exactly do the levels of size that are being compared get determined in each model?
- In Question 3, you had to produce and read the plot correctly, and also come up with the right choice of non-linear term to add.
- In Question 4, you needed to run the model with multiple imputation, then either calculate the predictions directly or determine them from a nomogram to receive credit. And if you do run a nomogram in a logistic regression, there's a function you should add to help with interpretation, right?
- In Question 5, your response should include specific details about the effects of the variables included in the model, and the overall quality of fit in the model. Harry and Sally are not involved in my response to Q5, and they shouldn't be in yours, either.
    - Most of the people who got 0 on Question 5 without additional comment from me needed to dig deeper. Consider looking at a plot of effects or nomogram (or, better, both) to help frame a more complete response. **If you're not explaining what the impact of the non-linear term is, in a sentence in Question 5, you're not going to get credit**.

## Project Grading and Feedback

1. Your grade on Project 1 was posted to [Canvas](https://canvas.case.edu/) last night. 
    - It's on a scale from 0-100, where 70-84 is a B, and 86-100 is an A, with 85 the cutpoint between an A and a B. 
    - All projects met the standard for B work, at least, so congratulations!
    - Every project had a mix of things I was happy about and things I wasn't so happy about.
2. The available feedback I have for you is to be found in the Google Sheet at http://bit.ly/432-2019-project1-evaluation.
    - In class, I will discuss (briefly) each of the elements (columns) in that sheet. The rows are our usual homework code, for those of you who worked alone. For those who worked in a group, I've specified your team code to you in an email sent last night.
    - A few comments occurred with enough frequency for me to develop an indexed set of those comments, and you'll find those on the second tab of the Google Sheet.
    - No, I won't give you a formula to determine your overall grade based on those elements, because I graded the work holistically, as well as element-by-element. These project 1 grades are final. 
    - If you have questions about how to do something more effectively that was highlighted as a problem in my feedback, please bring those questions to office hours, or send them along to 431-help.
    - Several common themes emerged, and I will address them in future work this semester. 
        - In some cases (effect specifications, and counting degrees of freedom), I already have.
    - I'll also remind you that the Project 2 instructions are different than the instructions/requirements for Project 1. Do not redo Project 1 in Project 2: that will not work.

## Maps: A Tease

- I expect that many of you are going to want to learn how to generate something like this, but maybe not.

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/cuyahoga_adi_map.png)

- Or, perhaps you'd be interested in building [a more interactive map, like this](http://betterhealthpartnership.org/data_center/report_22/maps/report22_overweight_obesity_map.asp). A screenshot follows...

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class15/screenshot.PNG)

Please respond to the [Minute Paper after Class 15](http://bit.ly/432-2019-minute15) so that I can gauge interest.

