library(shiny)

#real Kosovo app

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Regions"),
  sidebarLayout(
    
    
    sidebarPanel(
      
      selectInput("choice", label="Choose a Dependent Variable:", 
                  choices = c("Migration", "Deaths", "KLA Casualties",
                              "Bombings", "10 Day Sum of Bombings"))) ,
    
    mainPanel(
      #h1("Migrations by Municipality", align="center"),
      plotOutput(outputId="rPlot")
      #h2("The blue vertical lines represent bombings", align="center")
    )
  
)
)
