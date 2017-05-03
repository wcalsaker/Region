
library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
  

  output$rPlot <- renderPlot({
    
    
    #setwd("\\\\moray.jacks.local/william.alsaker/Documents and Settings/My Documents/STAT 702/Final Project")
    
    rgdt.lag<-read.csv(file="rgdtlag.csv", header=T)
    rgdt.lag$date<-as.Date(rgdt.lag$date, "%m/%d/%Y")
    

    
  
    if(input$choice=="Migration")
    {plot(lvcnt~date, data=rgdt.lag[rgdt.lag$gcode=="south",], type="l", col="gray2", lwd=2,
          main="Migration by Region", xlab="Dates", ylab="Displaced Persons")
      points(lvcnt~date, data=rgdt.lag[rgdt.lag$gcode=="north",], type="l", col="wheat3", lwd=2)
      points(lvcnt~date, data=rgdt.lag[rgdt.lag$gcode=="west",], type="l", col="slategray3", lwd=2)
      points(lvcnt~date, data=rgdt.lag[rgdt.lag$gcode=="east",], type="l", col="saddlebrown", lwd=2)
      legend( "topright", legend=c("North", "South", "East", "West"), col=c("wheat3","gray2", "saddlebrown", 
                                                                            "slategray3"), lty=1, lwd=2)
    }
    
    
    if(input$choice=="Deaths")
    {
      plot(nsum~date, data=rgdt.lag[rgdt.lag$gcode=="west",], type="l", col="slategray3",
           main="Deaths by Region", xlab="Dates", ylab="Deaths", lwd=2)
      points(nsum~date, data=rgdt.lag[rgdt.lag$gcode=="north",], type="l", col="wheat3", lwd=2)
      points(nsum~date, data=rgdt.lag[rgdt.lag$gcode=="south",], type="l", col="gray2", lwd=2)
      points(nsum~date, data=rgdt.lag[rgdt.lag$gcode=="east",], type="l", col="saddlebrown", lwd=2)
      legend( "topright", legend=c("North", "South", "East", "West"), col=c("wheat3","gray2", "saddlebrown", 
                                                                            "slategray3"), lty=1, lwd=2)
    }
    
    
    if(input$choice=="KLA Casualties")
    {
      
      plot(klaK~date, data=rgdt.lag[rgdt.lag$gcode=="south",], type="l", col="gray2",
           main="KLA Casualties by Region", xlab="Dates", ylab="Casualties in KLA Exchanges", lwd=2)
      points(klaK~date, data=rgdt.lag[rgdt.lag$gcode=="north",], type="l", col="wheat3", lwd=2)
      points(klaK~date, data=rgdt.lag[rgdt.lag$gcode=="west",], type="l", col="slategray3", lwd=2)
      points(klaK~date, data=rgdt.lag[rgdt.lag$gcode=="east",], type="l", col="saddlebrown", lwd=2)
      legend( "topright", legend=c("North", "South", "East", "West"), col=c("wheat3","gray2", "saddlebrown", 
                                                                            "slategray3"), lty=1, lwd=2)
      
    }
    
    
    if(input$choice=="Bombings")
    {
      plot(bomb~date, data=rgdt.lag[rgdt.lag$gcode=="east",], type="l", col="saddlebrown",
           main="Bombings by Region", xlab="Dates", ylab="Bombings", lwd=2)
      points(bomb~date, data=rgdt.lag[rgdt.lag$gcode=="north",], type="l", col="wheat3", lwd=2)
      points(bomb~date, data=rgdt.lag[rgdt.lag$gcode=="west",], type="l", col="slategray3", lwd=2)
      points(bomb~date, data=rgdt.lag[rgdt.lag$gcode=="south",], type="l", col="gray3", lwd=2)
      legend( "topleft", legend=c("North", "South", "East", "West"), col=c("wheat3","gray2", "saddlebrown", 
                                                                           "slategray3"), lty=1, lwd=2)
      
    }
    
    
    
    
    
    
    if(input$choice=="10 Day Sum of Bombings")
    {
      plot(bombsum10~date, data=rgdt.lag[rgdt.lag$gcode=="east",], type="l", col="saddlebrown",
           main="10 Day Sum of Bombings", xlab="Dates", ylab="Sum of Bombings in Prev 10 Days", lwd=2)
      points(bombsum10~date, data=rgdt.lag[rgdt.lag$gcode=="north",], type="l", col="wheat3", lwd=2)
      points(bombsum10~date, data=rgdt.lag[rgdt.lag$gcode=="west",], type="l", col="slategray3", lwd=2)
      points(bombsum10~date, data=rgdt.lag[rgdt.lag$gcode=="south",], type="l", col="gray3", lwd=2)
      legend( "topleft", legend=c("North", "South", "East", "West"), col=c("wheat3","gray2", "saddlebrown", 
                                                                           "slategray3"), lty=1, lwd=2)
      
      
    }
    
    
    
    
    

    
    
    
    
    
  })
  
  
  
  
  
}
