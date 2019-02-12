# 432 Spring 2019 Class 06: 2019-02-12

- Professor Love's Slides are now available: [in PDF](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class06/432_2019_slides06.pdf), and [in R Markdown](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class06/432_2019_slides06.Rmd). 
- Each 432 class is audio-recorded, and we post the recordings as `.mp3` files after class, above.

## Upcoming Deliverables

- There is a [Minute Paper after today's class (Class 06)](http://bit.ly/432-2019-minute06).
    - Please complete it by 2 PM Wednesday 2019-02-13, at http://bit.ly/432-2019-minute06.
- Your [Project 1 proposal](https://github.com/THOMASELOVE/2019-432/tree/master/projects/project1) is due Friday 2019-02-15 at 2 PM. See below for a more detailed discussion.
- [Homework 3](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework3) is due Friday 2019-02-22 at 2 PM, via Canvas.
- The [Course Calendar](https://github.com/THOMASELOVE/2019-432/blob/master/calendar.md) is the source of all deadlines.

## Announcements

1. The [Answer Sketch for Homework 2 is now available](https://github.com/THOMASELOVE/2019-432/tree/master/homework/homework2/sketch_hw02).
    - Homework regrade requests can be submitted to http://bit.ly/432-2019-regrades at any time before 2 PM on May 7.
    - The obviously tricky issue that many people asked about was Question 3, although the series of hints I provided should eventually have gotten you where I wanted you to go. The key issue is that it's really, really important to understand your data, and counting and plotting are the keys to success here.
2. I redid the [Slides for Class 05](https://github.com/THOMASELOVE/2019-432/tree/master/slides/class05) (2019-02-07) to fix the problems with screenshots. The [revised slides are posted here](https://github.com/THOMASELOVE/2019-432/tree/master/slides/class05).
3. Some people have asked about how I build the course in GitHub. 
    - Most of the course is in one repository - https://github.com/THOMASELOVE/2019-432. 
    - Exceptions include the course notes, which you get to at https://thomaselove.github.io/2019-432-book/ but the repository is at https://github.com/THOMASELOVE/2019-432-book/. 
    - Another exception is the course syllabus. 
    - Anything where I send you to `thomaselove.github.io` has a repository of its own in the background following that approach. 
    - Next year, I expect I'll build it a bit differently - it might be good to have the slides for each day in their own repository, probably. If you have suggestions, I'd love to hear them.
4. Despite the name and my interests and its timing, I have nothing to do with [Love Data Week 2019](https://lovedataweek.org/), either overall or the CWRU programs sponsored by Kelvin Smith Library that continue through the week. I hope you look into it, if you're interested. Direct questions to `freedmancenter` at `case dot edu`.
    - There is a drop-in Digital Archaeology and Virtual Reality event tomorrow from 12-3 at Kelvin Smith Library.
        > Step into a virtual reality archaeological site to see how data can build worlds. Excavation data from the ancient city of Morgantina has been used to create 3D models, virtual reality environments, and gamified lessons.
    - You might also be interested in a digital scholarship mixer (called Small Bytes) being held Friday from 3-4:30 at KSL.
        > Are you using digital research methods, or just curious about digital humanities or digital scholarship? Are you interested in the Freedman Fellowship Program? Come meet others on campus with similar interests, learn about interdisciplinary digital scholarship projects happening on campus, and chat about your work with KSL’s Digital Learning and Scholarship Team.
5. Materials from the 15 workshops given at rstudio::conf 2019 are [now available online](https://blog.rstudio.com/2019/02/06/rstudio-conf-2019-workshops). I went to Jenny Bryan and Jim Hester's [What They Forgot to Teach You About R](https://rstd.io/wtf-2019-rsc).

## Regarding the Project 1 Proposal

**NEW: PROJECT 1 PROPOSAL GRADING RUBRIC**: Dr. Love prepared [a web page which describes how we will grade the proposals](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project1/project1_proposal_rubric.md), which should be very helpful to students working on the proposal, as well as give you the idea of the process we use to assess them. If you like, you can also grab [the PDF version of this rubric](https://github.com/THOMASELOVE/2019-432/blob/master/projects/project1/project1_proposal_rubric.pdf).

- There's a lot of helpful stuff in here: please look this over as you're preparing your initial draft. It will save you a lot of time, I expect.
- If you're working in a group, one of you submits the proposal, and the other one submits a Word document saying "I am working on the project with STUDENTX. STUDENTX is submitting the proposal for our group."
- If you have data with missing values, great. For the proposal - you're not really doing much of anything about that yet.
- If you have survey data with "Don't Know" or "Refused" as responses, convert those responses to missing values.

## R Tip of the Day

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class06/figures/rladies_tw.PNG)

If you are unfamiliar with keyboard shortcuts in R Studio, some people really love them. To see the complete list, visit **Tools ... Keyboard Shortcuts Help** in R Studio.

## A statistical question

How does collinearity affect the process of variable selection via the "best subsets" procedures we're studying?

- Each of the various strategies we've discussed using the `regsubsets` function in the `leaps` package comes with positive and negative features. The final model we select, whether based on cross-validation after this work, or on some other strategy, can absolutely result in models that fail to meet various other criteria we have discussed in the past as being desirable.
- As an example, it may well be the case that if two (or more) variables are highly collinear, the "final" selection of a model using this (or any other semi-automated) approach may include one, both or none of those variables. If collinearity is a substantial concern, it may be worthwhile to identify potential solutions to that problem (like redefining one or both variables) prior to using a variable selection tool.

## Visualization of the Day

[Global Press Freedom: Countries to Watch](https://datastudio.google.com/u/0/reporting/1xeSLn4-93Ha550Onqul4P4OtIFsZo9v7/page/CbUf) excerpted from Michael J. Abramowitz' *Hobbling a Champion of Global Press Freedom*, and designed by Marc Soares as part of the [Makeover Monday project](http://www.makeovermonday.co.uk/mm2019/).

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class06/figures/soares.PNG)

## Hi, I'm a ...

![](https://github.com/THOMASELOVE/2019-432/blob/master/slides/class06/figures/witten-tw.PNG)
