# List of R Packages used this semester

Copy and paste the following two lines of code into the Console window of R Studio to install the packages you'll need for this course.

`pkgs <- c("afex", "aplpack", "aplore3", "arm", "babynames", "bestglm", "boot", "car", "cowplot", "devtools", "Epi", "ez", "faraway", "fivethirtyeight", "gapminder", "gee", "geepack", "GGally", "ggrepel", "ggridges", "ggthemes", "gmodels", "gridExtra", "Hmisc", "HSAUR", "infer", "knitr", "lars", "lattice", "leaps", "lme4", "lmerTest", "lmtest", "magrittr", "markdown", "MASS", "mice", "mosaic", "multcomp", "NHANES", "nnet", "OIsurv", "pander", "pROC", "pscl", "psych", "pwr", "qcc", "QuantPsyc", "quantreg", "ResourceSelection", "rmarkdown", "rmdformats", "rms", "robustbase", "ROCR", "rstanarm", "sandwich", "simputation", "skimr", "styler", "survival", "survminer", "tableone", "tidyverse", "vcd", "VGAM", "viridis")`

`install.packages(pkgs)`

1.  Now, go to the **Packages** tab on the right side of your screen, and click on **Update**. Select and install all available updates.

2.  Finally, choose **File ... Quit R** from the top menu, and accept R Studio's request to save your workspace. This will eliminate the need to re-do these steps every time you work in R.

Note: If you want to install a single package, you can do so by finding the word **Packages** on the right side of your screen. Click on the **Packages** menu to start installing the packages you'll need. Then click **Install**, which will bring up a dialog box, where you can type in the names of the packages that you need. these should be separated by a space or comma. - Be sure to leave the Install dependencies box checked.

## A Special Note on the `countreg` package

To build rootograms to visualize the results of regression models on count outcomes, I will occasionally use the `countreg` package, which is currently available **on R-Forge only**.

To install `countreg`, type `install.packages("countreg", repos="http://R-Forge.R-project.org")` into the R Console within R Studio.

If that doesn't work, try [this workaround to put an old version of "countreg" on your machine](https://github.com/THOMASELOVE/432-2018/blob/master/data-and-code/installing_countreg_workaround.pdf).
