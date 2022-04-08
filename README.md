# DSCI-310-Group-2-packages

`DSCI-310-Group-2-packages` is an R package that contains the functions used in a heart disease classification analysis done for DSCI 310 at UBC. This package is distributed under the MIT License.

The functions in this package clean and process data and create exploratory analysis figures.

The project that uses this package can be found at https://github.com/DSCI-310/DSCI-310-Group-2

# Installation

You can install the development version of `DSCI-310-Group-2-packages` from
[GitHub](https://github.com/) with:

``` r
devtools::install_github("DSCI-310/DSCI-310-Group-2-packages")
```

# Usage
The package contains three functions, for more detailed desciptions of the function please look at the roxxygen2 skeleton in the code
* clean_data: a function that converts ? to NA and remove them from the data
* diagnosis: a function that changes all instances of number 2-4 to 1 in a column names diagnosis in the dataframe
* accuracy_plot: a function that creates a plot that shows the elbow plot for the number of neighbors used in KNN classification
* balance_check: a function that creates a table that shows the proportion of data in a dataframe

Examples:
```
clean_data(heart_disease)
diagnosis(heart_disease)
balance_check(heart_disease, diagnosis)
accuracy_plot(accuracy)
```

# Contributing

Interested in contributing? Check out the [Contributing Guidelines](https://github.com/DSCI-310/DSCI-310-Group-2-packages/blob/main/CONTRIBUTING.md). Please note that this project is released with a [Code of Conduct](https://github.com/DSCI-310/DSCI-310-Group-2-packages/blob/main/CODE_OF_CONDUCT.md). By contributing to this project, you agree to abide by its terms.

# License

`DSCI-310-Group-2-packages` was created by Emily Ahn, Divya Bilolikar, Ryan Peng, and Niki Zamani. It is licensed under the terms of the MIT license.

# Credits

`DSCI-310-Group-2-packages` was created with [`cookiecutter`](https://cookiecutter.readthedocs.io/en/latest/) and the `py-pkgs-cookiecutter` [template](https://github.com/py-pkgs/py-pkgs-cookiecutter).
