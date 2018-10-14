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

### How to install from a (private) GitHub repo

To install the `R` package `my.first.r.package` from a GitHub repo, you need `devtools` installed. To install simply run, 
```r
> devtools::install_github("duffau/my_first_r_package")
```
and load the package like you would normally with `library` and call the Fibonacci function, for example: 
```r
> library(my.first.r.package)
> fib(7)
[1] 13
```
#### From a private repo

If the GitHub repo is private GitHub needs to know you have legitimate access to the private repo. The easiest way to authenticate yourself when installing packages with `devtools` is by using a Personal Access Token (PAT). See the the [GitHub help page](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) for instructions on how to generate a PAT.

The PAT is a string representation of some hexadecimal number,
```
"57c3a26ec451c190309c9197f1a3fa161d2f1cb4"
```
To install the `my.first.r.package` assuming it a private repo you have access to, you could in principle use write in a R-console,
```r
> devtools::install_github("duffau/my_first_r_package", auth_token="57c3a26ec451c190309c9197f1a3fa161d2f1cb4")
```
If you for example have an install statement like the one above in a script, DO NOT PUT YOUR PAT here. Never put credentials in a script, since there is a changes that you will share this script either by source control like Git og by som other mean and you will share the secret token as well. 

On Windows, it's a mush better approach to put your PAT in a `R` environment variable. The function `devtools:install_github` assumes the PAT in stored in the R environment variable `GITHUB_PAT` if it's not specified by the argument `auth_token`. To set the environemt variable first locate your `R` home folder. This command give you the path of your home folder:
```r
normalizePath("~/")
```
In the `R` home path make a file named `.Renviron` (if it allready exists just add the folling line). Add the line,
```
GITHUB_PAT=57c3a26ec451c190309c9197f1a3fa161d2f1cb4
```
to the file and save. Restart you `R` session, which causes R to reloade the evironment variables. Now you should be able to install the package from a private repo with the command,
```r
> devtools::install_github("duffau/my_first_r_package")
```
