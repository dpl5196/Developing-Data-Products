daysalive <- function(odate1, odate2) odate2 - odate1                               

shinyServer(
  function(input, output, session) {
    output$dateText  <- renderText({
      
      paste("Day Born", as.character(input$date))
      
    })
    
    
    
    output$dateText2 <- renderText({
      
      paste("Today's Date", as.character(input$date2))
      
    })
    output$daysalive <- renderPrint({daysalive(input$date, input$date2)})
  }
)
