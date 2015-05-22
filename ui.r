library("lubridate")
library(shiny)
# Define UI for an application that calulates the # of days you have been alive since you were born.
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Days Alive"),
# Sidebar with a slider input for number of observations
  sidebarPanel(
    dateInput('date',
              
              label = 'Date of Birth input: yyyy-mm-dd',
              
              value = Sys.Date()    
    ),
    dateInput('date2',
              
              label = 'Date Today: yyyy-mm-dd',
              
              value = Sys.Date()
              
    ),   
    submitButton('Submit')
  ),
 mainPanel(
    h3('Results of Calculation'),
    h4('You entered'),
         
         verbatimTextOutput("dateText"),
         
         verbatimTextOutput("dateText2"),
    h4('Which resulted in # of Days Alive'),
   verbatimTextOutput("daysalive")
  )
)
)
