library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  output$ggplot_Plot <- renderPlot({
    ggplot_command = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom)
    eval(parse(text=ggplot_command))
    g
  })
  
  output$ggplot_command <- renderText({
    ggplot_command = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom) 
  })
  
})