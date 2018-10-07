# My First R Package

## Introduction

This repo is both an intro to how to make a basic `R` package which is installable trough GitHub, and the actual package itself.

### Steps in creating a package

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
The `create` function creates the following files and folders:

- _R_: Folder which is oing to contain all `R` source code.
- _DESCRIPTION_: File with a generated description template to be filled out.
- _NAMESPACE_: This file specifies from which libraries the functions used should be imported and which functions in the current package should override external functions.
- _.Rbuildignore_: A file spefifying which files and folders to omit when building the code into a `R`-package.
- _.gitignore_: A file telling `git` which file to exclude from versioning.
- _my.first.package.Rproj_: An R-Studio project file which makes it more handy to develop the package source code with the R-studio IDE.

