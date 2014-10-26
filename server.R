library(shiny)

BMI<-function(Weight,Height) Weight/(Height)^2*703
IdealBMILow<-function(Height) 19.5/708*Height^2
IdealBMIHigh<-function(Height) 25/708*Height^2
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
        
        output$inputWeight<- renderPrint({input$Weight})
        output$inputHeight<- renderPrint({input$Height})
        output$BMI<-renderPrint({BMI(input$Weight,input$Height)})
        output$IdealBMILow<-renderPrint({IdealBMILow(input$Height)})
        output$IdealBMIHigh<-renderPrint({IdealBMIHigh(input$Height)})
       
})