library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("BMI Calculator"),
        
        # Sidebar with a slider input for number of observations
        sidebarPanel(
                h5('Enter your Weight in Pounds.'),
               numericInput('Weight', 'Weight lbs.',100, min=0,max=1000,step=1),
               h5('Enter your Height in Inches.'),
               numericInput('Height', 'Height in.', 60, min=0,max=200,step=1),
               submitButton('Submit')
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
                h4('Your Weight is'),
                verbatimTextOutput('inputWeight'),
                h4('Your Height is'),
                verbatimTextOutput('inputHeight'),
                h4('Your BMI is'),
                verbatimTextOutput('BMI'),
                h4('Your Ideal Weight is Between'),
                verbatimTextOutput('IdealBMILow'),
                h4('and'),
                verbatimTextOutput('IdealBMIHigh')
                
        )
))