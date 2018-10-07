# My First R Package

## Introduction

This repo is both an intro to how to make a basic `R` package which is installable trough GitHub, and the actual package itself.

### First steps in creating a package

First install `devtools` with
```r
> install.packages("devtools")
```
on your machine.

Secondly use `devtools` function `create` to create a new package directory. You have to specify a package name which only consists of ASCII characters, numbers and dots. A folder will be created in the name of the package in you current working directory.

```r
> library(devtools)
> setwd("path/to/parent/folder")
> devtools::create("my.first.r.package")
```

