
<!-- README.md is generated from README.Rmd. Please edit that file -->

# semfit

<!-- badges: start -->

<!-- badges: end -->

The goal of semfit is to extract structural equation modeling (SEM)
information, including model type, fit indices, and descriptive language
of model fit from academic papers. Users who don’t have any background
in SEM could use this package as a starting point in coding complicated
paragraphs through simple copy paste. This package contributes to an
ongoing research project examining SEM practices in applied social
sciences.

## Installation

You can install the development version of semfit from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("jennyyzxu/semfit")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(semfit)
## basic example code
paragraph <- "We conducted multi-level structural equation modeling (ML-SEM) with the R package lavaan (Rosseel, 2012) to test our hypotheses, with all views on aging indicators loaded on a latent variable (i.e., negative views on aging)."

extract_fit(paragraph)
#> $model_type
#> [1] "SEM"    "ML-SEM"
#> 
#> $fit_indices
#> [1] "No fit indices found"
#> 
#> $description
#> [1] "No descriptive language found"
```
