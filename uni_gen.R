#!/usr/bin/R
# Execute with Rscript filename.R

## * Shortcuts etc.------------------------------------------------------------
## ** Vim with NVim-R=========================================================
# [Refer to ~/Notes/MD/notes/UsingNVimR.md]


## * Script Description--------------------------------------------------------
# This will print 'Hello World' to the STDOUT.

## * Program-------------------------------------------------------------------
## ** Help====================================================================
## ** Load Packages==========================================================

if(require('pacman')){
  library('pacman')
}else{
  install.packages('pacman')
  library('pacman')
}

pacman::p_load(tidyverse)
## ** Code====================================================================
## *** Main Entry############################################################
main <- function(){
  print(33)
}
# *** Function Definitions##################################################
## **** HelloWorld
PrintsStuff <- function(){
         print("Hello World")
}
## **** Histogram
HistEx <- function(){
	hist(rnorm(333))
}

## **** ggplot
mtcars <- as_tibble(mtcars)
PlotThings <- function(){
  ggplot(mtcars, aes(x=wt, y = hp, col = cyl)) +
           geom_point() +
           theme_classic()
}


##### *** Call Function#########################################################
main()

#### ** Export Markdown ########################################################
#rmarkdown::render("RScriptTemplate.R")



## vim:fdm=expr:fdl=0
## vim:fde=getline(v\:lnum)=~'^##'?'>'.(matchend(getline(v\:lnum),'##*')-2)\:'='


