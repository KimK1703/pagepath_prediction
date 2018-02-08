# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'





#model <- load("model.rda")
data(model)

predictMarkov <- function(pageview_names) {
  library(markovchain)
  library(jsonlite)
  predict(model$estimate, newdata = fromJSON(pageview_names))
}
