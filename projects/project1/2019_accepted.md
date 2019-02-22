Accepted 432 Project 1 Proposals for 2019
================

-   [General Notes](#general-notes)
-   [Attaway to Chari/Hnath](#attaway-to-charihnath)
-   [Conic to Du](#conic-to-du)
-   [Ferguson to Gutierrez](#ferguson-to-gutierrez)
-   [Hill to Li](#hill-to-li)
-   [Mahran to Moyer/Wu](#mahran-to-moyerwu)
-   [Osterman to Savadelis](#osterman-to-savadelis)
-   [Wang to Zhang](#wang-to-zhang)

General Notes
-------------

-   Some of you have more than 8 predictors, in either your logistic or linear regression models. I strongly encourage you to reduce to 8 predictors in each case before doing any analyses.
-   Be sure that all multi-categorical variables are factors in R before attempting modeling.
-   Be sure that all multi-categorical predictors have at least 30 subjects in each category.
-   If you have subjects with missing outcomes for your linear regression, you have to drop them for the linear model, but not (necessarily) for the logistic model
-   If you have subjects with missing outcomes for your logistic regression, you have to drop them for the logistic model, but not (necessarily) for the linear model
-   You'll be using multiple imputation for all missingness in each final model, although you can use simple imputation or even a complete cases analysis in the earlier model development stages before you settle on a final model, but then that final model should be presented with estimates based on a model using multiple imputation.
-   Be sure to read and heed my comments to you on Canvas and in email, in some cases including comments made after your proposal was approved.
-   As part of your minute paper due Wednesday 2019-02-27, you will need to
    -   edit this material, as necessary, to match your understanding of your project
    -   verify that the link works and that you can download the data from that link,
    -   provide the mean and standard deviation across your sample of the outcome in your linear model
    -   provide the count and % of subjects who fall in the categories described by the outcome in your logistic model.

Attaway to Chari/Hnath
----------------------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Amy Attaway</th>
<th>NHANES analysis of grip strength comparing smokers vs non-smokers</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>National Health and Nutrition Examination Survey (<a href="https://www.cdc.gov/nchs/nhanes/index.htm">NHANES</a>), 2011-12</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>846 subjects</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>hand grip strength, in kg (in an average of 3 trials in the dominant hand)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether or not the subject has smoked &gt; 100 cigarettes, lifetime</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Wyatt Bensken</th>
<th>Exploring the Predictors of Prevalence of Coronary Heart Diseaes and Poor Health in 500 Cities</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.cdc.gov/500cities/index.htm">500 Cities data</a> from CDC and RWJF (mostly BRFSS)</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>500 &quot;cities&quot;</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>prevalence of coronary heart disease in the city</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether or not &lt;= 10% of their residents describe their health as &quot;not good&quot;</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Filipa Blasco Tavares Pereira Lopes</th>
<th>Diabetes Risk factors in Rural Virginia</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets">Vanderbilt repository: &quot;diabetes&quot;</a> as deposited by <a href="https://www.ncbi.nlm.nih.gov/pubmed/9010903">John Schorling, MD</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>367 African-Americans living in central Virginia interviewed to understand prevalence of cardiovascular risk factors (complete cases)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>stabilized glucose level in the subject's blood (I assume in mg/dl)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the subject has diabetes</td>
</tr>
</tbody>
</table>

-   Note that this repository was, technically, off limits, but we didn't catch that. You will not be allowed to use data pulled from the Vanderbilt repository for Project 2 without Dr. Love's prior written permission.

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Jane Carsey</th>
<th>Predicting Percentage of Government Seats Held by Women and GDP status of World Nations Using UN Data Reports</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="http://data.un.org/">United Nations</a> - including multiple repositories</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>236 countries / sovereign states that are members of the UN</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>percentage of parliament / government body seats held by women as of Feb 2018</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the country is above the median per-capita gross domestic product</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Sandhya Chari &amp; Joseph Hnath</th>
<th>Coronary Artery Disease Prediction from Clinical Testing Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">303 patients referred for coronary angiography at Cleveland Clinic</a> May 1981 - Sept 1984</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>303 patients, including some missing data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>resting systolic blood pressure (mm Hg) on hospital admission</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>if any of 4 main coronary arteries have stenosed &gt; 50% (indicates CAD diagnosis)</td>
</tr>
</tbody>
</table>

-   These data come out of the UC Irvine machine learning archive and they've also been used by Kaggle. I won't completely rule out those archives as data sources for Project 2, but these particular 303 subjects from CCF in the mid 1980s are off limits for Project 2.

Conic to Du
-----------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Julijana Conic</th>
<th>Predicting Metabolic Comorbidities in the NAGALA Cohort</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://datadryad.org/handle/10255/dryad.172065?show=full">Datadryad repository</a> of a cohort study (Okamura et al. <em>Int J Obesity</em>)[<a href="https://www.nature.com/articles/s41366-018-0076-3" class="uri">https://www.nature.com/articles/s41366-018-0076-3</a>] at a hospital in Japan, 2004-2015</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>999 patients that are part of the NAGALA cohort (excludes those with alcoholic fatty liver)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>HDL cholesterol level (I assume the most recent available)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>presence/absence of fatty changes in the liver</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Wei Dai</th>
<th>Insurance behaviour prediction</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>Health Reform Monitoring Survey, <a href="https://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/35623">via ICPSR</a>, 2013 Q2</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>570 survey respondents (describing households)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>health care costs not covered by insurance in the past 12m</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the subject currently has health insurance</td>
</tr>
</tbody>
</table>

-   ICPSR = Inter-university Consortium for Political and Social Research

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Dustin DeMeo</th>
<th>Women's Foot Morphology: High Heels and Wide Feet</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>US Army Anthropometric Survey (<a href="http://www.openlab.psu.edu/ansur2/">ANSUR II</a>), 2012</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 female soldiers measured in ANSUR II</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>foot breadth measured horizontally (in mm) with a Brannock device</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether a standard-width shoe sized for length would fit</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Michelle Disher</th>
<th>Wages and Pesticides in Agricultural Farm Workers</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.doleta.gov/naws/pages/public-data/public-data-content-and-file-formats.cfm">National Agricultural Workers Survey</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>999 agricultural workers included in the survey</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>hourly wage in US dollars</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject has loaded, mixed or applied pesticides in the past 12m</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Zhanwen Du</th>
<th>The prediction of coronary artery disease (CAD) and the sleeping time spent at Sao2&lt;90% in patients who had laparoscopic bariatric procedures with OSA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.lerner.ccf.org/qhs/datasets/">Hypoxia Map</a> from the Cleveland Clinic Statistical Education Dataset Repository</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>278 patients who had laparoscopic bariatric surgery in 2005-2009, and a diagnosis of obstructive sleep apnea within 2 years</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>time spent at oxygen saturation during sleep</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject has a diagnosis of coronary artery disease</td>
</tr>
</tbody>
</table>

-   Note that this repository was, technically, off limits, but we didn't catch that. You will not be allowed to use data pulled from the CCF Statistics Education repository for Project 2 without Dr. Love's prior written permission.

Ferguson to Gutierrez
---------------------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Lindsay Ferguson</th>
<th>Obesity and Gynecologic Cancer in the 2017 BRFSS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.cdc.gov/brfss/annual_data/annual_2017.html">Behavioral Risk Factor Surveillance System</a>, 2017</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>282 women with a gynecologic malignancy (cervical, endometrial, or ovarian, complete cases)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>age at cancer diagnosis</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether some or all of the costs of subject's cancer treatment was covered by insurance</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Jordan Fiegl</th>
<th>Understanding Emergency Room Visits Pertaining to Wait Time and Coronary Artery Disease</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.cdc.gov/nchs/ahcd/datasets_documentation_related.htm">National Hospital Ambulatory Care Survey</a>, 2016. <a href="https://www.cdc.gov/nchs/ahcd/about_ahcd.htm">More details</a>.</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 patients seen at participating emergency departments, data collection by Census interviewers in an automated Patient Record form</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>time in minutes that the patient spent in the waiting room before being seen by hospital staff</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the patient has coronary artery disease</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Samuel Guadagnino</th>
<th>Understanding College Major Effect on Jobs and Gender</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>FiveThirtyEight's Github Repository: <a href="https://github.com/datasets/five-thirty-eight-datasets/blob/master/datasets/college-majors/data/recent-grads.csv">Recent Grads</a> from American Community Survey 2010-12 Public Use Microdata</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>169 college majors, including 49 STEM, 80 arts and sciences, 40 business and education</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>percentage of women in the major</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the % of jobs in that field that require a college degree is above 65</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Jesus Gutierrez</th>
<th>Predictors of Incidence and Case Detection Rate of tuberculosis around the world</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>TB-related data from the <a href="https://www.who.int/tb/country/data/download/en/">World Health Organization</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>202 countries / sovereign states that are participating in WHO surveys</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>number of incident TB cases in 2017 in the country</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the country has met WHO's goal of &gt;= 70% case detection rate</td>
</tr>
</tbody>
</table>

Hill to Li
----------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Hannah Hill</th>
<th>Texan Identity Politics in the 2016 and 2018 Elections</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>US general election results: <a href="https://github.com/MEDSL/2018-elections-unoffical">MIT Election Data &amp; Science Lab</a> and Texas <a href="https://www.sos.state.tx.us/elections/historical/index.shtml">Secretary of State</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>254 Texas counties</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>% of Trump votes in 2016, and % of Cruz votes in 2018</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether R or D presidential candidate won the county in 2016</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Bowen Jin</th>
<th>Predicting Heart Disease in 303 Cleveland Clinic Patients</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">303 patients referred for coronary angiography at Cleveland Clinic</a> May 1981 - Sept 1984</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>301 patients, after dropping two subjects with missing data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>ST depression induced by exercise, in mm</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>if any of 4 main coronary arteries have stenosed &gt; 50% (CAD diagnosis)</td>
</tr>
</tbody>
</table>

-   Note again that these data come out of the UC Irvine machine learning archive and they've also been used by Kaggle. I won't completely rule out those archives as data sources for Project 2, but these particular 303 subjects from CCF in the mid 1980s are off limits for Project 2.

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Amber Kerstetter-Fogle</th>
<th>TBI predictive of PTSD?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0169490">TRACK-TBI (Traumatic Brain Injury) Pilot Study</a>, Related <a href="http://www.ucsf.edu/news/2017/03/405926/artificial-intelligence-aids-scientists-uncovering-hallmarks-mystery-concussion">News piece</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>222 acute TBI patients including imaging, genetics and clinical outcomes</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>WAIS (Wechsler Adult Intelligence Scale) measure at 6m post injury</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>post traumatic stress disorder DSM-IV diagnosis at 6m post injury</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Aravindan Krishnan &amp; Jacqui Yarman</th>
<th>Predicting Productivity from Mental Health Survey Responses</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>2017 <a href="https://www.samhsa.gov/data/data-we-collect/nsduh-national-survey-drug-use-and-health">National Survey on Drug Use and Health</a> (<a href="https://www.datafiles.samhsa.gov/study-dataset/national-survey-drug-use-and-health-2017-nsduh-2017-ds0001-nid17939">NSDUH data link</a>)</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 subjects ages 18+ with complete data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>days in the past 12m when subject was totally unable to work or carry out normal activities because of emotions, nerves or mental health</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>yes/no response to &quot;Have you ever in your life had a period of time lasting several days or longer when most of the day you felt sad, empty or depressed?&quot;</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Jin Li</th>
<th>Maximum Heart Rate and the Prediction of Heart Disease</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">303 patients referred for coronary angiography at Cleveland Clinic</a> May 1981 - Sept 1984</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>303 patients, with some missing data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>maximum observed heart rate of a patient during a thallium stress test (in beats/minute)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>if any of 4 main coronary arteries have stenosed &gt; 50% (CAD diagnosis)</td>
</tr>
</tbody>
</table>

-   Note again that these data come out of the UC Irvine machine learning archive and they've also been used by Kaggle. I won't completely rule out those archives as data sources for Project 2, but these particular 303 subjects from CCF in the mid 1980s are off limits for Project 2.

Mahran to Moyer/Wu
------------------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Amr Mahran</th>
<th>Predictors of the electrocardiographic and angiographic findings suggestive of Coronary Artery Disease</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">303 patients referred for coronary angiography at Cleveland Clinic</a> May 1981 - Sept 1984</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>301 patients, after dropping two subjects with missing data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>ST depression induced by exercise, in mm</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>if any of 4 main coronary arteries have stenosed &gt; 50% (CAD diagnosis)</td>
</tr>
</tbody>
</table>

-   Note again that these data come out of the UC Irvine machine learning archive and they've also been used by Kaggle. I won't completely rule out those archives as data sources for Project 2, but these particular 303 subjects from CCF in the mid 1980s are off limits for Project 2.

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Morgan McGrath</th>
<th>Violent Crime and Water Violations in Ohio, California, and Florida</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="http://www.countyhealthrankings.org/explore-health-rankings/rankings-data-documentation">County Health Rankings</a> for 2018</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>213 counties for Florida, Ohio and California</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>violent crime rate per 100,000 population</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether or not the county has had a health-based drinking water violation (maximum contaminant level, maximum residual disinfectant level, or treatment technique violation)</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Michael McHenry</th>
<th>Can Healthcare Utilization and Access Predict markers of cardiovascular health?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>NHANES 2013-14, as <a href="https://www.cdc.gov/nchs/data/series/sr_02/sr02_162.pdf">described here</a></td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>996 subjects over the age of 20 with complete data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>LDL cholesterol in mg/dl</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject's body mass index exceeds 25</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Laurie Ann Moennich</th>
<th>Children with ADHD: Predicting Factors Influencing School Attendance Rates and Examining the Role of Meditation with Emotions and Stress Management - NHIS 2017 Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.cdc.gov/nchs/nhis/nhis_2017_data_release.htm">National Health Interview Survey</a> (2017)</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>633 children living with ADHD/ADD (Attention Deficit Hyperativity Disorder)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>days of school the child missed in the past 12m for illness/injury</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>has child had difficulties with emotions/concentration/behavior/getting along</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Devlin Moyer &amp; Joshua Wu</th>
<th>Effects of BMI, Income, Race and Blood Lead Levels on Blood Mercury Levels</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015">NHANES</a>, 2015-16</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 participants who were both interviewed and examined.</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>amount of mercury in the blood (micrograms / deciliter)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the amount of mercury in the blood was above detection level (0.28)</td>
</tr>
</tbody>
</table>

Osterman to Savadelis
---------------------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Michael Osterman</th>
<th>Effect of Drug Use on Determinants of Mental Health</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.datafiles.samhsa.gov/study-dataset/national-survey-drug-use-and-health-2017-nsduh-2017-ds0001-nid17939">National Survey on Drug Use and Health</a>, 2017</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 adult (age 18+) who were surveyed</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>days in the past 12m when subject was totally unable to work or carry out normal activities because of emotions, nerves or mental health</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject received inpatient (but not necessarily in a hospital) mental health treatment in the past 12m</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Harry Persaud</th>
<th>Predicting an Individual's Fasting Glucose and History of Sleep Problems Using 2015-2016 NHANES Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015">NHANES</a> 2015-16</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 adult participants (ages 18-79)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>Fasting glucose concentration in mg/dl</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject has ever told their clinician they've had trouble sleeping</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Sarah Ronis</th>
<th>Predicting Lengthy or Complex US Ambulatory Pediatric Visits</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.cdc.gov/nchs/ahcd/datasets_documentation_related.htm#data">National Ambulatory Medical Care Survey</a> of visits to office-based physicians</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>specific physician encounters for 1000 different children ages 18 and under in 2016</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>visit duration in minutes</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the visit led to referral for additional services</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Alyssa Savadelis</th>
<th>Predicting Kidney Health in Adults with Diabetes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015">NHANES</a> 2015-2016</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>776 adults (age 21+) with diabetes</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>urine albumin to creatinine ratio (in mg/g), which can help identify kidney disease</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the subject has been told they have weak or failing kidneys by a clinician</td>
</tr>
</tbody>
</table>

Wang to Zhang
-------------

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Shengxuan Wang</th>
<th>The prediction of sleep time</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.openicpsr.org/openicpsr/project/100375/version/V1/view">Online Sleep Survey Data</a>, gathered by David Dickinson at Appalachian State, via ICPSR</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 Adults ages 18-53 who took the survey</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>average nightly sleep (in hours/night) over the last week</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether average sleep time last week exceeded 7 hours/night</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Bianca Wilson</th>
<th>Predicting Positions on Cannabis Legalization from Income and Demography</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://gssdataexplorer.norc.org/">General Social Survey</a>, from the National Opinion Research Center at U Chicago</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>850 adults (ages 18-87) who answered the survey</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>respondent's annual income, in $</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>yes/no response to &quot;Should Marijuana be made legal?&quot;</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Julia Yang</th>
<th>Effects of Selective Clinical Variables on Diabetes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/21600/summary">National Longitudinal Study of Adolescent to Adult Health (Add Health)</a> via ICPSR from Wave IV</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>1000 participants (<em>ages and exclusions unclear</em>)</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>respondent's hemoglobin A1c level in %</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether subject has diabetes</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Serhan Yilmaz</th>
<th>Prediction of Coronary Angiography and Thallium Stress Test Results</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td><a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">303 patients referred for coronary angiography at Cleveland Clinic</a> May 1981 - Sept 1984</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>303 patients, with some missing data</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>maximum observed heart rate of a patient during a thallium stress test (in beats/minute)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>if any of 4 main coronary arteries have stenosed &gt; 50% (CAD diagnosis)</td>
</tr>
</tbody>
</table>

-   Note again that these data come out of the UC Irvine machine learning archive and they've also been used by Kaggle. I won't completely rule out those archives as data sources for Project 2, but these particular 303 subjects from CCF in the mid 1980s are off limits for Project 2.

<table>
<colgroup>
<col width="17%" />
<col width="82%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">Siyi Zhang</th>
<th>The effect of different types of lipoprotein cholesterol and the severity level of liver disease on the concentration of aspartate aminotransferase and the prediction of Metabolic Syndrome</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">Data Source</td>
<td>The <a href="http://www.lerner.ccf.org/qhs/datasets/datasets.php">liver steatosis data</a> from the Cleveland Clinic Statistical Education Dataset Repository</td>
</tr>
<tr class="even">
<td align="right">Rows in Tibble</td>
<td>443 patients who had laparoscopic gastric bypass, sleeve, or band surgery, and then needle liver biopsy with or without preoperative right upper quadrant ultrasound between 2005 and 2009.</td>
</tr>
<tr class="odd">
<td align="right">Outcome: Linear</td>
<td>concentration of aspartate aminotransferase (AST) in the blood (units/liter)</td>
</tr>
<tr class="even">
<td align="right">Outcome: Logistic</td>
<td>whether the subject has metabolic syndrome</td>
</tr>
</tbody>
</table>

-   Note that this repository was, technically, off limits, but we didn't catch that. You will not be allowed to use data pulled from the CCF Statistics Education repository for Project 2 without Dr. Love's prior written permission.
