# Spring Break Tips for 432 Project 1

# Tip 1

Don't load packages you don't need, and watch out for potential conflicts between packages over the names of a function, for example, `Predict`, which is (a different) function within the `car` package and the `rms` package. This may require you to specify the one you want by calling, for example, `rms::Predict` rather than just `Predict` if you have loaded both `car` and `rms`. To see that this may be a problem, consider using `message = TRUE` in your chunk of code that loads R packages while developing your project, and only change to `message = FALSE` when knitting the final version for submission to Canvas.

# Tip 2 

The "regsubsets" approach works only for linear models, not logistic models. For logistic models in Project 1, if you want to use a semi-automated approach, try the two types of stepwise modeling I described in Class 12's discussion of the Ohio Medicaid Assessment Survey, along with, perhaps, a kitchen sink model.

# Tip 3 

If you get a "figure margins too large" error when trying to create a plot, then your best solution is probably to change the names of the variables (and the names of the levels of the factors involved) solely for the purposes of fitting that plot. You can certainly try adjusting the fig.height and fig.width parameters for that chunk of code that generates the plot, but sometimes, you just have to shorten the names. You can also absolutely change the names just for the plot, and then revert back to the regular names for other parts of the work, if you like, but this needs to be clear to me when I read the plot.

# Tip 4 

Before you submit your project on Canvas, make sure that every single piece of output you produce, especially the plots and the tables that summarize your work, are completely legible within the HTML document. If I have to refer to your R Markdown file to run the analysis for myself just to see part of your results, you will definitely lose points in grading.
