Accepted 432 Project 1 Proposals for 2019
================

## General Notes

  - Some of you have more than 8 predictors, in either your logistic or
    linear regression models. I strongly encourage you to reduce to 8
    predictors in each case before doing any analyses.
  - Be sure that all multi-categorical variables are factors in R before
    attempting modeling.
  - Be sure that all multi-categorical predictors have at least 30
    subjects in each category.
  - If you have subjects with missing outcomes for your linear
    regression, you have to drop them for the linear model, but not
    (necessarily) for the logistic model
  - If you have subjects with missing outcomes for your logistic
    regression, you have to drop them for the logistic model, but not
    (necessarily) for the linear model
  - You’ll be using multiple imputation for all missingness in each
    final model, although you can use simple imputation or even a
    complete cases analysis in the earlier model development stages
    before you settle on a final model, but then that final model should
    be presented with estimates based on a model using multiple
    imputation.
  - Be sure to read and heed my comments to you on Canvas and in email,
    in some cases including comments made after your proposal was
    approved.
  - As part of your minute paper due Wednesday 2019-02-27, you will need
    to
      - edit this material, as necessary, to match your understanding of
        your project
      - verify that the link works and that you can download the data
        from that link,
      - provide the mean across your sample of the outcome in your
        linear model
      - provide the % of subjects who fall in the categories described
        by the outcome in your logistic model.
  - I’ll need to set some clearer rules about sources of data that
    aren’t acceptable for Project
Two.

## Attaway to Chari/Hnath

|       Amy Attaway | NHANES analysis of grip strength comparing smokers vs non-smokers                                               |
| ----------------: | --------------------------------------------------------------------------------------------------------------- |
|       Data Source | National Health and Nutrition Examination Survey ([NHANES](https://www.cdc.gov/nchs/nhanes/index.htm)), 2011-12 |
|    Rows in Tibble | 846 subjects                                                                                                    |
|   Outcome: Linear | hand grip strength, in kg (in an average of 3 trials in the dominant hand)                                      |
| Outcome: Logistic | whether or not the subject has smoked \> 100 cigarettes, lifetime                                               |

|     Wyatt Bensken | Exploring the Predictors of Prevalence of Coronary Heart Diseaes and Poor Health in 500 Cities |
| ----------------: | ---------------------------------------------------------------------------------------------- |
|       Data Source | [500 Cities data](https://www.cdc.gov/500cities/index.htm) from CDC and RWJF (mostly BRFSS)    |
|    Rows in Tibble | 500 “cities”                                                                                   |
|   Outcome: Linear | prevalence of coronary heart disease in the city                                               |
| Outcome: Logistic | whether or not \<= 10% of their residents describe their health as “not good”                  |

| Filipa Blasco Tavares Pereira Lopes | Diabetes Risk factors in Rural Virginia                                                                                                                                    |
| ----------------------------------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|                         Data Source | [Vanderbilt repository: “diabetes”](http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets) as deposited by [John Schorling, MD](https://www.ncbi.nlm.nih.gov/pubmed/9010903) |
|                      Rows in Tibble | 367 African-Americans living in central Virginia interviewed to understand prevalence of cardiovascular risk factors (complete cases)                                      |
|                     Outcome: Linear | stabilized glucose level in the subject’s blood (I assume in mg/dl)                                                                                                        |
|                   Outcome: Logistic | whether the subject has diabetes                                                                                                                                           |

  - Note that this repository was, technically, off limits, but we
    didn’t catch that. You will not be allowed to use data pulled from
    the Vanderbilt repository for Project 2 without Dr. Love’s prior
    written
permission.

|       Jane Carsey | Predicting Percentage of Government Seats Held by Women and GDP status of World Nations Using UN Data Reports |
| ----------------: | ------------------------------------------------------------------------------------------------------------- |
|       Data Source | [United Nations](http://data.un.org/) - including multiple repositories                                       |
|    Rows in Tibble | 236 countries / sovereign states that are members of the UN                                                   |
|   Outcome: Linear | percentage of parliament / government body seats held by women as of Feb 2018                                 |
| Outcome: Logistic | whether the country is above the median per-capita gross domestic product                                     |

| Sandhya Chari & Joseph Hnath | Coronary Artery Disease Prediction from Clinical Testing Data                                                                                    |
| ---------------------------: | ------------------------------------------------------------------------------------------------------------------------------------------------ |
|                  Data Source | [303 patients referred for coronary angiography at Cleveland Clinic](https://archive.ics.uci.edu/ml/datasets/Heart+Disease) May 1981 - Sept 1984 |
|               Rows in Tibble | 303 patients, including some missing data                                                                                                        |
|              Outcome: Linear | resting systolic blood pressure (mm Hg) on hospital admission                                                                                    |
|            Outcome: Logistic | if any of 4 main coronary arteries have stenosed \> 50% (indicates CAD diagnosis)                                                                |

  - These data come out of the UC Irvine machine learning archive and
    they’ve also been used by Kaggle. I won’t completely rule out those
    archives as data sources for Project 2, but these particular 303
    subjects from CCF in the mid 1980s are off limits for Project
Two.

## Conic to Du

|    Julijana Conic | Predicting Metabolic Comorbidities in the NAGALA Cohort                                                                                                                                                                       |
| ----------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [Datadryad repository](https://datadryad.org/handle/10255/dryad.172065?show=full) of a cohort study (Okamura et al. *Int J Obesity*)\[<https://www.nature.com/articles/s41366-018-0076-3>\] at a hospital in Japan, 2004-2015 |
|    Rows in Tibble | 999 patients that are part of the NAGALA cohort (excludes those with alcoholic fatty liver)                                                                                                                                   |
|   Outcome: Linear | HDL cholesterol level (I assume the most recent available)                                                                                                                                                                    |
| Outcome: Logistic | presence/absence of fatty changes in the liver                                                                                                                                                                                |

|           Wei Dai | Insurance behaviour prediction                                                                                  |
| ----------------: | --------------------------------------------------------------------------------------------------------------- |
|       Data Source | Health Reform Monitoring Survey, [via ICPSR](https://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/35623), 2013 Q2 |
|    Rows in Tibble | 570 survey respondents (describing households)                                                                  |
|   Outcome: Linear | health care costs not covered by insurance in the past 12m                                                      |
| Outcome: Logistic | whether the subject currently has health insurance                                                              |

  - ICPSR = Inter-university Consortium for Political and Social
    Research

|      Dustin DeMeo | Women’s Foot Morphology: High Heels and Wide Feet                                    |
| ----------------: | ------------------------------------------------------------------------------------ |
|       Data Source | US Army Anthropometric Survey ([ANSUR II](http://www.openlab.psu.edu/ansur2/)), 2012 |
|    Rows in Tibble | 1000 female soldiers measured in ANSUR II                                            |
|   Outcome: Linear | foot breadth measured horizontally (in mm) with a Brannock device                    |
| Outcome: Logistic | whether a standard-width shoe sized for length would fit                             |

|   Michelle Disher | Wages and Pesticides in Agricultural Farm Workers                                                                              |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [National Agricultural Workers Survey](https://www.doleta.gov/naws/pages/public-data/public-data-content-and-file-formats.cfm) |
|    Rows in Tibble | 999 agricultural workers included in the survey                                                                                |
|   Outcome: Linear | hourly wage in US dollars                                                                                                      |
| Outcome: Logistic | whether subject has loaded, mixed or applied pesticides in the past 12m                                                        |

|        Zhanwen Du | The prediction of coronary artery disease (CAD) and the sleeping time spent at Sao2\<90% in patients who had laparoscopic bariatric procedures with OSA |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [Hypoxia Map](https://www.lerner.ccf.org/qhs/datasets/) from the Cleveland Clinic Statistical Education Dataset Repository                              |
|    Rows in Tibble | 278 patients who had laparoscopic bariatric surgery in 2005-2009, and a diagnosis of obstructive sleep apnea within 2 years                             |
|   Outcome: Linear | time spent at oxygen saturation during sleep                                                                                                            |
| Outcome: Logistic | whether subject has a diagnosis of coronary artery disease                                                                                              |

  - Note that this repository was, technically, off limits, but we
    didn’t catch that. You will not be allowed to use data pulled from
    the CCF Statistics Education repository for Project 2 without
    Dr. Love’s prior written
permission.

## Ferguson to Gutierrez

|  Lindsay Ferguson | Obesity and Gynecologic Cancer in the 2017 BRFSS                                                           |
| ----------------: | ---------------------------------------------------------------------------------------------------------- |
|       Data Source | [Behavioral Risk Factor Surveillance System](https://www.cdc.gov/brfss/annual_data/annual_2017.html), 2017 |
|    Rows in Tibble | 282 women with a gynecologic malignancy (cervical, endometrial, or ovarian, complete cases)                |
|   Outcome: Linear | age at cancer diagnosis                                                                                    |
| Outcome: Logistic | whether some or all of the costs of subject’s cancer treatment was covered by insurance                    |

|      Jordan Fiegl | Understanding Emergency Room Visits Pertaining to Wait Time and Coronary Artery Disease                                                                                           |
| ----------------: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [National Hospital Ambulatory Care Survey](https://www.cdc.gov/nchs/ahcd/datasets_documentation_related.htm), 2016. [More details](https://www.cdc.gov/nchs/ahcd/about_ahcd.htm). |
|    Rows in Tibble | 1000 patients seen at participating emergency departments, data collection by Census interviewers in an automated Patient Record form                                             |
|   Outcome: Linear | time in minutes that the patient spent in the waiting room before being seen by hospital staff                                                                                    |
| Outcome: Logistic | whether the patient has coronary artery disease                                                                                                                                   |

| Sebastian Garcia-Medina & Yousef Mustafa | An Investigation of Religious Affiliation and Its Relationship to Social Factors Such as Tolerance, Diversity, Income, and Education Among US Adults              |
| ---------------------------------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|                              Data Source | Pew Forum [Religious Landscape Survey](www.pewforum.org/dataset/u-s-religious-landscape-survey/), 2007                                                            |
|                           Rows in Tibble | 1,000 respondents to the (telephone) survey. There are adults.                                                                                                    |
|                          Outcome: Linear | Self-built scale based on 15 survey questions measuring religious dogmatism (“strict fundamentalist religious belief” vs. “open-mindedness, more modern beliefs”) |
|                        Outcome: Logistic | whether the subject self-identifies as belonging to a religion                                                                                                    |

| Samuel Guadagnino | Understanding College Major Effect on Jobs and Gender                                                                                                                                                                             |
| ----------------: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | FiveThirtyEight’s Github Repository: [Recent Grads](https://github.com/datasets/five-thirty-eight-datasets/blob/master/datasets/college-majors/data/recent-grads.csv) from American Community Survey 2010-12 Public Use Microdata |
|    Rows in Tibble | 169 college majors, including 49 STEM, 80 arts and sciences, 40 business and education                                                                                                                                            |
|   Outcome: Linear | percentage of women in the major                                                                                                                                                                                                  |
| Outcome: Logistic | whether the % of jobs in that field that require a college degree is above 65                                                                                                                                                     |

|   Jesus Gutierrez | Predictors of Incidence and Case Detection Rate of tuberculosis around the world                       |
| ----------------: | ------------------------------------------------------------------------------------------------------ |
|       Data Source | TB-related data from the [World Health Organization](https://www.who.int/tb/country/data/download/en/) |
|    Rows in Tibble | 202 countries / sovereign states that are participating in WHO surveys                                 |
|   Outcome: Linear | number of incident TB cases in 2017 in the country                                                     |
| Outcome: Logistic | whether the country has met WHO’s goal of \>= 70% case detection rate                                  |

## Hill to Li

|       Hannah Hill | Texan Identity Politics in the 2016 and 2018 Elections                                                                                                                                                         |
| ----------------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | US general election results: [MIT Election Data & Science Lab](https://github.com/MEDSL/2018-elections-unoffical) and Texas [Secretary of State](https://www.sos.state.tx.us/elections/historical/index.shtml) |
|    Rows in Tibble | 254 Texas counties                                                                                                                                                                                             |
|   Outcome: Linear | % of Trump votes in 2016, and % of Cruz votes in 2018                                                                                                                                                          |
| Outcome: Logistic | whether R or D presidential candidate won the county in 2016                                                                                                                                                   |

|         Bowen Jin | Predicting Heart Disease in 303 Cleveland Clinic Patients                                                                                        |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [303 patients referred for coronary angiography at Cleveland Clinic](https://archive.ics.uci.edu/ml/datasets/Heart+Disease) May 1981 - Sept 1984 |
|    Rows in Tibble | 301 patients, after dropping two subjects with missing data                                                                                      |
|   Outcome: Linear | ST depression induced by exercise, in mm                                                                                                         |
| Outcome: Logistic | if any of 4 main coronary arteries have stenosed \> 50% (CAD diagnosis)                                                                          |

  - Note again that these data come out of the UC Irvine machine
    learning archive and they’ve also been used by Kaggle. I won’t
    completely rule out those archives as data sources for Project 2,
    but these particular 303 subjects from CCF in the mid 1980s are off
    limits for Project
Two.

| Amber Kerstetter-Fogle | TBI predictive of PTSD?                                                                                                                                                                                                                                                   |
| ---------------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|            Data Source | [TRACK-TBI (Traumatic Brain Injury) Pilot Study](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0169490), Related [News piece](http://www.ucsf.edu/news/2017/03/405926/artificial-intelligence-aids-scientists-uncovering-hallmarks-mystery-concussion) |
|         Rows in Tibble | 222 acute TBI patients including imaging, genetics and clinical outcomes                                                                                                                                                                                                  |
|        Outcome: Linear | WAIS (Wechsler Adult Intelligence Scale) measure at 6m post injury                                                                                                                                                                                                        |
|      Outcome: Logistic | post traumatic stress disorder DSM-IV diagnosis at 6m post injury                                                                                                                                                                                                         |

| Aravindan Krishnan & Jacqui Yarman | Predicting Productivity from Mental Health Survey Responses                                                                                                                                                                                                                  |
| ---------------------------------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|                        Data Source | 2017 [National Survey on Drug Use and Health](https://www.samhsa.gov/data/data-we-collect/nsduh-national-survey-drug-use-and-health) ([NSDUH data link](https://www.datafiles.samhsa.gov/study-dataset/national-survey-drug-use-and-health-2017-nsduh-2017-ds0001-nid17939)) |
|                     Rows in Tibble | 1000 subjects ages 18+ with complete data                                                                                                                                                                                                                                    |
|                    Outcome: Linear | days in the past 12m when subject was totally unable to work or carry out normal activities because of emotions, nerves or mental health                                                                                                                                     |
|                  Outcome: Logistic | yes/no response to “Have you ever in your life had a period of time lasting several days or longer when most of the day you felt sad, empty or depressed?”                                                                                                                   |

|            Jin Li | Maximum Heart Rate and the Prediction of Heart Disease                                                                                           |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [303 patients referred for coronary angiography at Cleveland Clinic](https://archive.ics.uci.edu/ml/datasets/Heart+Disease) May 1981 - Sept 1984 |
|    Rows in Tibble | 303 patients, with some missing data                                                                                                             |
|   Outcome: Linear | maximum observed heart rate of a patient during a thallium stress test (in beats/minute)                                                         |
| Outcome: Logistic | if any of 4 main coronary arteries have stenosed \> 50% (CAD diagnosis)                                                                          |

  - Note again that these data come out of the UC Irvine machine
    learning archive and they’ve also been used by Kaggle. I won’t
    completely rule out those archives as data sources for Project 2,
    but these particular 303 subjects from CCF in the mid 1980s are off
    limits for Project
Two.

## Mahran to Moyer/Wu

|        Amr Mahran | Predictors of the electrocardiographic and angiographic findings suggestive of Coronary Artery Disease                                           |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [303 patients referred for coronary angiography at Cleveland Clinic](https://archive.ics.uci.edu/ml/datasets/Heart+Disease) May 1981 - Sept 1984 |
|    Rows in Tibble | 301 patients, after dropping two subjects with missing data                                                                                      |
|   Outcome: Linear | ST depression induced by exercise, in mm                                                                                                         |
| Outcome: Logistic | if any of 4 main coronary arteries have stenosed \> 50% (CAD diagnosis)                                                                          |

  - Note again that these data come out of the UC Irvine machine
    learning archive and they’ve also been used by Kaggle. I won’t
    completely rule out those archives as data sources for Project 2,
    but these particular 303 subjects from CCF in the mid 1980s are off
    limits for Project
Two.

|    Morgan McGrath | Violent Crime and Water Violations in Ohio, California, and Florida                                                                                                          |
| ----------------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [County Health Rankings](http://www.countyhealthrankings.org/explore-health-rankings/rankings-data-documentation) for 2018                                                   |
|    Rows in Tibble | 213 counties for Florida, Ohio and California                                                                                                                                |
|   Outcome: Linear | violent crime rate per 100,000 population                                                                                                                                    |
| Outcome: Logistic | whether or not the county has had a health-based drinking water violation (maximum contaminant level, maximum residual disinfectant level, or treatment technique violation) |

|   Michael McHenry | Can Healthcare Utilization and Access Predict markers of cardiovascular health?              |
| ----------------: | -------------------------------------------------------------------------------------------- |
|       Data Source | NHANES 2013-14, as [described here](https://www.cdc.gov/nchs/data/series/sr_02/sr02_162.pdf) |
|    Rows in Tibble | 996 subjects over the age of 20 with complete data                                           |
|   Outcome: Linear | LDL cholesterol in mg/dl                                                                     |
| Outcome: Logistic | whether subject’s body mass index exceeds 25                                                 |

| Laurie Ann Moennich | Children with ADHD: Predicting Factors Influencing School Attendance Rates and Examining the Role of Meditation with Emotions and Stress Management - NHIS 2017 Data |
| ------------------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|         Data Source | [National Health Interview Survey](https://www.cdc.gov/nchs/nhis/nhis_2017_data_release.htm) (2017)                                                                  |
|      Rows in Tibble | 633 children living with ADHD/ADD (Attention Deficit Hyperativity Disorder)                                                                                          |
|     Outcome: Linear | days of school the child missed in the past 12m for illness/injury                                                                                                   |
|   Outcome: Logistic | has child had difficulties with emotions/concentration/behavior/getting along                                                                                        |

| Devlin Moyer & Joshua Wu | Effects of BMI, Income, Race and Blood Lead Levels on Blood Mercury Levels                       |
| -----------------------: | ------------------------------------------------------------------------------------------------ |
|              Data Source | [NHANES](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015), 2015-16 |
|           Rows in Tibble | 1000 participants who were both interviewed and examined.                                        |
|          Outcome: Linear | amount of mercury in the blood (micrograms / deciliter)                                          |
|        Outcome: Logistic | whether the amount of mercury in the blood was above detection level (0.28)                      |

## Osterman to Savadelis

|  Michael Osterman | Effect of Drug Use on Determinants of Mental Health                                                                                                                |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [National Survey on Drug Use and Health](https://www.datafiles.samhsa.gov/study-dataset/national-survey-drug-use-and-health-2017-nsduh-2017-ds0001-nid17939), 2017 |
|    Rows in Tibble | 1000 adult (age 18+) who were surveyed                                                                                                                             |
|   Outcome: Linear | days in the past 12m when subject was totally unable to work or carry out normal activities because of emotions, nerves or mental health                           |
| Outcome: Logistic | whether subject received mental health treatment or counseling in the past 12m                                                                                     |

|     Harry Persaud | Predicting an Individual’s Fasting Glucose and History of Sleep Problems Using 2015-2016 NHANES Data |
| ----------------: | ---------------------------------------------------------------------------------------------------- |
|       Data Source | [NHANES](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015) 2015-16      |
|    Rows in Tibble | 1000 adult participants (ages 18-79)                                                                 |
|   Outcome: Linear | Fasting glucose concentration in mg/dl                                                               |
| Outcome: Logistic | whether subject has ever told their clinician they’ve had trouble sleeping                           |

|       Sarah Ronis | Predicting Lengthy or Complex US Ambulatory Pediatric Visits                                                                                          |
| ----------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [National Ambulatory Medical Care Survey](https://www.cdc.gov/nchs/ahcd/datasets_documentation_related.htm#data) of visits to office-based physicians |
|    Rows in Tibble | specific physician encounters for 1000 different children ages 18 and under in 2016                                                                   |
|   Outcome: Linear | visit duration in minutes                                                                                                                             |
| Outcome: Logistic | whether the visit led to referral for additional services                                                                                             |

|  Alyssa Savadelis | Predicting Kidney Health in Adults with Diabetes                                                  |
| ----------------: | ------------------------------------------------------------------------------------------------- |
|       Data Source | [NHANES](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?BeginYear=2015) 2015-2016 |
|    Rows in Tibble | 776 adults (age 21+) with diabetes                                                                |
|   Outcome: Linear | urine albumin to creatinine ratio (in mg/g), which can help identify kidney disease               |
| Outcome: Logistic | whether the subject has been told they have weak or failing kidneys by a clinician                |

## Wang to Zhang

|    Shengxuan Wang | The prediction of sleep time                                                                                                                                |
| ----------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [Online Sleep Survey Data](https://www.openicpsr.org/openicpsr/project/100375/version/V1/view), gathered by David Dickinson at Appalachian State, via ICPSR |
|    Rows in Tibble | 1000 Adults ages 18-53 who took the survey                                                                                                                  |
|   Outcome: Linear | average nightly sleep (in hours/night) over the last week                                                                                                   |
| Outcome: Logistic | whether average sleep time last week exceeded 7 hours/night                                                                                                 |

|     Bianca Wilson | Predicting Positions on Cannabis Legalization from Income and Demography                                           |
| ----------------: | ------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [General Social Survey](https://gssdataexplorer.norc.org/), from the National Opinion Research Center at U Chicago |
|    Rows in Tibble | 850 adults (ages 18-87) who answered the survey                                                                    |
|   Outcome: Linear | respondent’s annual income, in $                                                                                   |
| Outcome: Logistic | yes/no response to “Should Marijuana be made legal?”                                                               |

|        Julia Yang | Effects of Selective Clinical Variables on Diabetes                                                                                                               |
| ----------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | [National Longitudinal Study of Adolescent to Adult Health (Add Health)](https://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/21600/summary) via ICPSR from Wave IV |
|    Rows in Tibble | 1000 participants who were ages 24-32 in Wave IV                                                                                                                  |
|   Outcome: Linear | respondent’s hemoglobin A1c level in %                                                                                                                            |
| Outcome: Logistic | whether subject has diabetes                                                                                                                                      |

|     Serhan Yilmaz | Prediction of Coronary Angiography and Thallium Stress Test Results                                                                              |
| ----------------: | ------------------------------------------------------------------------------------------------------------------------------------------------ |
|       Data Source | [303 patients referred for coronary angiography at Cleveland Clinic](https://archive.ics.uci.edu/ml/datasets/Heart+Disease) May 1981 - Sept 1984 |
|    Rows in Tibble | 303 patients, with some missing data                                                                                                             |
|   Outcome: Linear | maximum observed heart rate of a patient during a thallium stress test (in beats/minute)                                                         |
| Outcome: Logistic | if any of 4 main coronary arteries have stenosed \> 50% (CAD diagnosis)                                                                          |

  - Note again that these data come out of the UC Irvine machine
    learning archive and they’ve also been used by Kaggle. I won’t
    completely rule out those archives as data sources for Project 2,
    but these particular 303 subjects from CCF in the mid 1980s are off
    limits for Project
Two.

|        Siyi Zhang | The effect of different types of lipoprotein cholesterol and the severity level of liver disease on the concentration of aspartate aminotransferase and the prediction of Metabolic Syndrome |
| ----------------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       Data Source | The [liver steatosis data](http://www.lerner.ccf.org/qhs/datasets/datasets.php) from the Cleveland Clinic Statistical Education Dataset Repository                                           |
|    Rows in Tibble | 443 patients who had laparoscopic gastric bypass, sleeve, or band surgery, and then needle liver biopsy with or without preoperative right upper quadrant ultrasound between 2005 and 2009.  |
|   Outcome: Linear | concentration of aspartate aminotransferase (AST) in the blood (units/liter)                                                                                                                 |
| Outcome: Logistic | whether the subject has metabolic syndrome                                                                                                                                                   |

  - Note that this repository was, technically, off limits, but we
    didn’t catch that. You will not be allowed to use data pulled from
    the CCF Statistics Education repository for Project 2 without
    Dr. Love’s prior written permission.
