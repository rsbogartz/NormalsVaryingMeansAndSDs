library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal Histograms for Various Means, Standard Deviations, and Sample Sizes."),
  
  # Sidebar with a slider input for the mean, sd, and N
  sidebarLayout(
    sidebarPanel(
      sliderInput("decimal", 
      				"Mean:", 
                  	min = 0, 	
                  	max = 100, 
                  	value = 50, 
                  	step = .5),
      sliderInput("sd", 
      				"Standard Deviation:", 
                  	min = 0, 	
                  	max = 50, 
                  	value = 20),
      sliderInput("N",
                    "Sample size:",
                  min = 1,
                  max = 10000,
                  value = 25)            
                    
    ),  
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")),
 ))
   
 ))  #Shiny Ui and fluid page
