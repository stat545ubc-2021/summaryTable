
<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is a practise R package for learning purposes and covers
the required steps for `Assignment B2` for partial fulfilment
[STAT545B](https://github.com/stat545ubc-2021).**

# summaryTable

<!-- badges: start -->

<!-- badges: end -->

The aim of this package is to provide useful functions to make it easier
to produce simple statistics for your datasets.

Currently it just includes the summary\_function() which outputs a table
of the minimum and maximum values, mean and standard deviation.

## Installation

You can install the development version of summaryTable from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jennybc/regexcite")
```

## Example

Often when looking at large datasets with multiple conditions or
categories, it can be difficult to visualise patterns. This package
helps by outputting a summary table for a ***numerical variable*** as
grouped by a condition.

Below is a basic example which shows you how to generate a common
problem:

``` r
library(summaryTable)
## basic example code
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.
