# Key Practices for the Language Scientist

## Assignment Session 4

This is the assignment prompt for the Git session of the Key Practices for the Language Scientist course.
We would like you to fork this repository into your own GitHub account, and make some changes to it.
You can submit this assignment by handing in the link to your repository.

### Forking the repository

To fork the repository, press the button in the right top corner on GitHub that says "fork".
Note that you need to have a GitHub account and be logged in to do this.

### Cloning the repository

Locate the URL to your forked repository in the GitHub user interface.
This URL should contain both the repository name and your GitHub username, and start with `https://github.com/` and end in `.git`.

- Open a command line on your computer (terminal / bash / powershell / command prompt)
- Navigate to the repository folder (`cd your_path_to_folder`)
- Type in this command (replace `<URL>` with the repository URL): `git clone <URL>`
- There should now be a folder on your computer containing this file

### Making and Pushing changes

Now, we would like you to add one (or more) files, and to commit these changes back to your online repository.

- Add a file which contains one of your scripts. If you don't have any R scripts yet, you can use the example at the bottom.
- Save script as session4.R in the repository folder
- Open a command line
- Navigate to the repository folder
- Add your file to the staging area: `git add session4.R`
- Commit your changes with a sensible commit message (replace `<MESSAGE>`): `git commit -m "<MESSAGE>"`
- Push your commit to the remote: `git push` (if it cannot find the remote: `git push -u origin main`)
- Now you should have pushed your script to your fork of the repository. You can check if it worked by going to github.com, logging in, and going to your forked repository. The file should appear there!

## R script example

```r
# 1. Set up your project by loading your packages, e.g.:
library(package)

# 2. Set the working directory and load the data, e.g.:
setwd("directory")
data <- read.delim("data.csv", header = TRUE, sep = ",")

# 3. Make variables ready to work on, e.g.:
data <- data %>%
            select(ppID, condition, trial, RT) %>%
            mutate(condition = as.factor(condition), target = as.factor(target))
data <- na.omit(data)

# 4. Explore data, e.g.:
summary(data)

# 5. Analysis (can be a simple analysis), e.g. a one-way ANOVA, within-subjects:
anovaRTbycategory <- aov(RT ~category+error(ppID/category), data = analysis_anova)
summary(anovaRTbycategory)
```
