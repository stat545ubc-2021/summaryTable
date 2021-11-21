
<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is a practise R package for learning purposes and covers
the required steps for `Assignment B2` for partial fulfilment
[STAT545B](https://github.com/stat545ubc-2021).**

# summaryTable

<!-- badges: start -->

<!-- badges: end -->

The aim of this package is to provide useful functions to make it easier
to produce multiple summary statistics for your datasets,
simultaneously.

Currently it just includes the `summary_function()` which outputs a
table of the minimum and maximum values, mean and standard deviation.
This will be expanded in future assignments for
[STAT545B](https://stat545.stat.ubc.ca/course/).

## Installation

You can install the development version of summaryTable from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2021/summaryTable")
```

## Usage

Often when looking at large datasets with multiple conditions or
categories, it can be difficult to visualise patterns. This package
helps by outputting a useful summary table of important statistics,
through the use of a simple function called `summary_function()`.

The function outputs the minimum and maximum values, the mean and the
standard deviation for a numerical variable **y** of interest as grouped
by a categorical variable or condition **cat**.

The following is a basic example which uses the gapminder dataset
package to show how to generate a summary. The code below will generate
an output summary of the minimum and maximum values, mean and standard
deviation for life expectancy variable **lifeExp** by the country
variable **country**:

``` r
library(summaryTable)
library(gapminder)
#> Warning: package 'gapminder' was built under R version 4.1.1
Summary_function(gapminder, country, lifeExp)
#> # A tibble: 142 x 6
#>    country     minimum maximum average range st_dev
#>    <fct>         <dbl>   <dbl>   <dbl> <dbl>  <dbl>
#>  1 Afghanistan    28.8    43.8    37.5  15.0   5.10
#>  2 Albania        55.2    76.4    68.4  21.2   6.32
#>  3 Algeria        43.1    72.3    59.0  29.2  10.3 
#>  4 Angola         30.0    42.7    37.9  12.7   4.01
#>  5 Argentina      62.5    75.3    69.1  12.8   4.19
#>  6 Australia      69.1    81.2    74.7  12.1   4.15
#>  7 Austria        66.8    79.8    73.1  13.0   4.38
#>  8 Bahrain        50.9    75.6    65.6  24.7   8.57
#>  9 Bangladesh     37.5    64.1    49.8  26.6   9.03
#> 10 Belgium        68      79.4    73.6  11.4   3.78
#> # ... with 132 more rows
```
