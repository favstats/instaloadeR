
<!-- README.md is generated from README.Rmd. Please edit that file -->

# instaloadeR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/instaloadeR)](https://CRAN.R-project.org/package=instaloadeR)
<!-- badges: end -->

The goal of `instaloadeR` is to provide a scraper for the image-sharing
social networking service
[Instagram](http://https://www.instagram.com/). Mostly inspired by this
Scraping Tool:
[digitalmethodsinitiative/4cat](https://github.com/digitalmethodsinitiative/4cat).
Wraps this Python module
[instaloader](https://github.com/instaloader/instaloader). You will need
Python 3.6 or higher to use `instaloader`.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("favstats/instaloadeR")
```

Load library

``` r
library(instaloadeR)
```

Install necessary Python libraries

``` r
install_instaloadeR()
```

## Example

This is a basic example which shows you how to solve a common problem:

Make sure to use your preferred Python installation

``` r
library(reticulate)

use_python(py_config()$python)
```

Initialize `instaloadeR`

``` r
init_instaloadeR()
```

### Get Posts with Hashtag

Returns a tibble with hashtags.

``` r

billgates <- insta_posts(query = "billgatesisevil", 
                         scope = "hashtag",
                         max_posts = 5, 
                         scrape_comments = F)
```
