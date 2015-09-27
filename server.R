library(shiny)
## shiny server document displays the histogram
data(InsectSprays)
binsize<=5
shinyServer(
  function(input,output) { 
    output$newHist<-renderPlot ({
      hist (InsectSprays$count, input$binsize)})
  }
    )