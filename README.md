# RankData_JSchoolPsych
Code to generate figures and tables for ``Using Ranked Survey Data in Education Research: Methods and Applications`` by Anna E. Bargagliotti (Loyola Marymount University), Susan E. Martonosi (Harvey Mudd College), Michael E. Orrison (Harvey Mudd College), Austin H. Johnson (University of California - Riverside), and Sarah A. Fefer (University of Massachusetts - Amherst), Journal of School Psychology, 2021.

Raw survey data (`SurveyDataComplete.csv`) is available by request of the authors only.  Please email Professor Sarah Fefer at mailto:sfefer@umass.edu. 

## RankData_JSchoolPsych.Rmd
This R Markdown file generates Tables 2-6, Tables 8-12, Figures 1-4, and Figures 7-9 of the paper.  The file requires `SurveyDataComplete.csv` and `rankplot_SM.R` to run.  When `knit` to PDF, the document `RankData_JSchoolPsych.pdf` should be reproduced. 

## 20180405_RankedDataBubblePlot_Q24.Rmd
When `knit` to PDF, this R Markdown file generates Figure 5 (bubble plot for Q24) of the paper.

## uniformtest.m
This Matlab code generates Table 7 in the paper.  The file requires `effproj.m`
Usage:  X = uniformtest(A,P,m)
This runs a test for uniformity for the rank data profile P based on the rows of the matrix A (i.e., the row space of A after removing the all-ones space). In this case, m is the number of candidates being ranked. The output is the estimated p-value followed by the computed test statistic. 

For example, to apply the Means Test to the data from Question 24 (which is encoded in the fifth column of the matrix Question24 pasted below), one calls `uniformtest(MatrixMeans,Question24(:,5),4)`  where

MatrixMeans =

     4     3     4     3     2     2     4     3     4     3     2     2     4     3     4     3     2     2     1     1     1     1     1     1
     3     4     2     2     4     3     3     4     2     2     4     3     1     1     1     1     1     1     4     3     4     3     2     2
     2     2     3     4     3     4     1     1     1     1     1     1     3     4     2     2     4     3     3     4     2     2     4     3
     1     1     1     1     1     1     2     2     3     4     3     4     2     2     3     4     3     4     2     2     3     4     3     4
    
Question24 =

     4     3     2     1    40
     3     4     2     1    68
     4     2     3     1    22
     3     2     4     1    12
     2     4     3     1    40
     2     3     4     1    22
     4     3     1     2    12
     3     4     1     2    30
     4     2     1     3     5
     3     2     1     4    14
     2     4     1     3    44
     2     3     1     4    38
     4     1     3     2    14
     3     1     4     2     6
     4     1     2     3     6
     3     1     2     4    11
     2     1     4     3     2
     2     1     3     4     8
     1     4     3     2    25
     1     3     4     2    12
     1     4     2     3    57
     1     3     2     4    52
     1     2     4     3     8
     1     2     3     4    41
 
 For the Marginals test, one uses for A:
 
 MatrixMarginals =

     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     1     1     1     1     1
     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     0     0
     0     1     0     1     0     0     0     1     0     1     0     0     0     1     0     1     0     0     0     0     0     0     0     0
     1     0     1     0     0     0     1     0     1     0     0     0     1     0     1     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     1     1     1     1     1     1     0     0     0     0     0     0
     0     0     1     1     0     0     0     0     1     1     0     0     0     0     0     0     0     0     0     0     0     0     1     1
     1     0     0     0     0     1     1     0     0     0     0     1     0     0     0     0     0     0     0     1     0     1     0     0
     0     1     0     0     1     0     0     1     0     0     1     0     0     0     0     0     0     0     1     0     1     0     0     0
     0     0     0     0     0     0     1     1     1     1     1     1     0     0     0     0     0     0     0     0     0     0     0     0
     1     1     0     0     0     0     0     0     0     0     0     0     0     0     1     1     0     0     0     0     1     1     0     0
     0     0     1     0     1     0     0     0     0     0     0     0     1     0     0     0     0     1     1     0     0     0     0     1
     0     0     0     1     0     1     0     0     0     0     0     0     0     1     0     0     1     0     0     1     0     0     1     0
     1     1     1     1     1     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0
     0     0     0     0     0     0     0     0     1     0     1     0     0     0     1     0     1     0     0     0     1     0     1     0
     0     0     0     0     0     0     0     0     0     1     0     1     0     0     0     1     0     1     0     0     0     1     0     1

For the Pairs test, one uses for A:

MatrixOrderedPairs =

     0     1     0     0     1     1     0     1     0     0     1     1     0     0     0     0     0     0     1     1     1     1     1     1
     1     0     1     1     0     0     1     0     1     1     0     0     1     1     1     1     1     1     0     0     0     0     0     0
     0     0     0     1     1     1     0     0     0     0     0     0     0     1     0     0     1     1     1     1     1     1     1     1
     1     1     1     0     0     0     1     1     1     1     1     1     1     0     1     1     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     1     1     1     0     0     0     1     1     1     1     1     1     1     1     1
     1     1     1     1     1     1     1     1     1     0     0     0     1     1     1     0     0     0     0     0     0     0     0     0
     0     0     1     1     0     1     0     0     0     0     0     0     1     1     1     1     1     1     0     1     0     0     1     1
     1     1     0     0     1     0     1     1     1     1     1     1     0     0     0     0     0     0     1     0     1     1     0     0
     0     0     0     0     0     0     0     0     1     1     0     1     1     1     1     1     1     1     0     0     0     1     1     1
     1     1     1     1     1     1     1     1     0     0     1     0     0     0     0     0     0     0     1     1     1     0     0     0
     0     0     0     0     0     0     1     1     1     1     1     1     0     0     1     1     0     1     0     0     1     1     0     1
     1     1     1     1     1     1     0     0     0     0     0     0     1     1     0     0     1     0     1     1     0     0     1     0

For the Probabilities test, one uses for A:

MatrixProbabilities =

     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0
     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1

For the example Second Place test, one uses for A:

MatrixSecondPlace =

     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     0     0
     0     0     1     1     0     0     0     0     1     1     0     0     0     0     0     0     0     0     0     0     0     0     1     1
     1     1     0     0     0     0     0     0     0     0     0     0     0     0     1     1     0     0     0     0     1     1     0     0
     0     0     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0     1     1     0     0     0     0

Likewise, if one is interested in Question 25, the relevant P matrix is

Question25 =

     4     3     2     1    34
     3     4     2     1    47
     4     2     3     1    20
     3     2     4     1    20
     2     4     3     1    34
     2     3     4     1    22
     4     3     1     2    13
     3     4     1     2    33
     4     2     1     3     5
     3     2     1     4    11
     2     4     1     3    42
     2     3     1     4    41
     4     1     3     2     8
     3     1     4     2     5
     4     1     2     3     8
     3     1     2     4     6
     2     1     4     3     4
     2     1     3     4     6
     1     4     3     2    22
     1     3     4     2    14
     1     4     2     3    67
     1     3     2     4    61
     1     2     4     3     9
     1     2     3     4    57


## effproj.m
This Matlab file is called by `uniformtest.m`.  It takes a matrix A and creates a matrix EPROJ which is the matrix that encodes the projection onto the "effective space" of A, i.e., the orthogonal complement of the nullspace of A.  

## rankplot_SM.R
This R script modifies the function `rankplot` from the `pmr` package to plot larger circles.
