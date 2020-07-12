
<!-- README.md is generated from README.Rmd. Please edit that file -->

# normalizar

<!-- badges: start -->

<!-- badges: end -->

normalizar removes diacritics, numbers, punctuations, and leading,
trailing, and double spaces from strings.

## Installation

``` r
devtools::install_github("leonardoshibata/normalizar")
```

## Example

This is a basic example of a string normalization:

``` r
library(normalizar)
normalizar(" São   Paulo 2020! ")
#> [1] "SAO PAULO"
```
