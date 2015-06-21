library(shiny)
library(ggplot2)
 
shinyUI(pageWithSidebar(
  

  headerPanel("Basic Introduction to ggplot2"),
  
  sidebarPanel(
    selectInput("geom", "Choose a ggplot2 geometry:", choices = c("point", "line", "boxplot"), selected = "point" ),
    selectInput("x", "Choose x:", choices = colnames(mpg), selected = "cyl"),
    selectInput("y", "Choose y:", choices = colnames(mpg), selected = "hwy"),
    selectInput("colour", "Choose colour:", choices = colnames(mpg), selected = "manufacturer" ),
    selectInput("facet_wrap", "Choose facet_wrap:", choices = colnames(mpg), selected = "trans" )
  ),
  
  mainPanel(
    plotOutput("ggplot_Plot"),
    h3(textOutput("ggplot_command")),
    p("Need help? Please consult the documentation file:",a("documentation.html",href="documentation.html"))
  )
))