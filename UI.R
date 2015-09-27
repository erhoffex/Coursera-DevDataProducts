library (shiny)
## this shiny application displays a user-defined histogram 
## data is derived from the InsectSprays dataset
## user determines the # of BINS in the histogram
## by using a slider input widget
 shinyUI
 fluidPage (
 headerPanel("InsectSpray Histogram"),
 sidebarPanel(
   h1("Histogram Design"),
   sliderInput(input="binsize", label= "Select Number of Bins:", value=5, min= 3, max= 100, step=2),
   submitButton('submit')),
 mainPanel (
   h1("graph"),
   plotOutput('newHist')),
   ls()
 )