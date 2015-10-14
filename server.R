 library(shiny)
 library(httr)

# runApp("/Users/bogartz/Desktop/- shiny/My.Shiny.apps/ShinyNormalsVaryingMeansAndSDs/")


shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
  hist(rnorm(input$N, input$decimal, input$sd))
  
   
  }) 
   
  })
  


