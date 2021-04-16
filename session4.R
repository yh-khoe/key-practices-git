# ---- Script header -------------------------------------------------------####
# Date:         25.03.2021
# Author:       Teun van Gils
# File name:    'session4.R'
# Description:  Example script for Git assignment
# Course:       Key Practices for the Language Scientist 2021
#
# Example inspired from https://osf.io/4zchf/ (Egger & Schiefner, 2020).


# ---- Change log ----------------------------------------------------------####

# Date:       16.04.2021 
# Change by:  Y.H. Khoe
# Changes:    Improved script as per instructions from session 4


# 1. Library Declarations --------------------------------------------------####
# Set up your project by loading your packages, e.g.:

library(package)
library(here)


# 2. Load data -------------------------------------------------------------####
# Set the working directory and load the data, e.g.:

root <- here::here()
setwd(paste0(root,"/data_directory"))
rt_data <- read.delim("data.csv", header = TRUE, sep = ",")


# 3. Data preparation ------------------------------------------------------####
# Make variables ready to work on, e.g.:

rt_data <- rt_data %>%
            select(ppID, condition, trial, RT) %>%
            mutate(condition = as.factor(condition), 
                   target = as.factor(target))
rt_data <- na.omit(rt_data)


# 4. Analysis --------------------------------------------------------------####
# (can be a simple analysis), e.g. a one-way ANOVA, within-subjects:

summary(rt_data)

anova_rt_by_category <- aov(RT ~category+error(ppID/category), 
                            rt_data = analysis_anova)
summary(anova_rt_by_category)
