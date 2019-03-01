# Emailed comments from Professor Love related to Quiz 1

## Question 1

The question, " Which of the following variables did not change?" refers to whether the **names** change.

## Question 3

In quiz question 3, I use the word "substantially" in response c. That's a little vague. Feel free to take it to mean "to a great extent" or "appreciably" or "much" larger. What I want you to do is look at the boxplot to make this decision, rather than running a calculation. 

If one value was twice the size of the other, that would be substantially larger. If one value was, for example, a third larger than the other, I would not consider that substantially larger for this purpose.

## Question 22

A student asked if I was being incredibly sneaky and doing something covert to make the Question 22 Spearman rho-squared plot show 2 df for each of the quantitative variables height and age. I am not.

The variables height and age are each treated by the model as numerical quantitative variables. 

You'll note that I used the p = 2 parameter. This means that the Spearman rho-squared plot is, for numeric variables, computing the quadratic rank generalization to allow for non-monotonicity. This makes the degrees of freedom 2 for all quantitative variables. 

If I'd instead run p = 1, you'd get:

```
spearman2(fev1 ~ age + height + female + smoker, p = 1, data=childfev)

Spearman rho^2    Response variable:fev1

        rho2       F df1 df2     P Adjusted rho2   n
age    0.637 1146.52   1 652 0e+00         0.637 654
height 0.788 2426.85   1 652 0e+00         0.788 654
female 0.021   13.73   1 652 2e-04         0.019 654
smoker 0.067   46.63   1 652 0e+00         0.065 654
```

What is plotted in Question 22 follows from:

```
spearman2(fev1 ~ age + height + female + smoker, p = 2, data=childfev)

Spearman rho^2    Response variable:fev1

        rho2       F df1 df2     P Adjusted rho2   n
age    0.646  593.40   2 651 0e+00         0.645 654
height 0.790 1224.75   2 651 0e+00         0.789 654
female 0.021   13.73   1 652 2e-04         0.019 654
smoker 0.067   46.63   1 652 0e+00         0.065 654
```

None of this should affect your conclusions, but if for some reason, you thought age and height were anything other than quantitative variables, that's not correct. They are in fact quantities.
