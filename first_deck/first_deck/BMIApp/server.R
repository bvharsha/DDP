library(UsingR)

BMIdata <- read.csv("BMIData_csv.csv")


shinyServer(
  
  
  function(input, output){
    
    output$oidName <- renderPrint({input$Name})
    output$oidage <- renderPrint({input$age})
    output$oidsex <- renderPrint({input$sex})
    output$oidhght <- renderPrint({input$hght})
    output$oidwght <- renderPrint({input$wght})
    output$oidexer <- renderPrint({input$exer})
    
    output$oidbmi <- renderPrint({input$wght / (input$hght * input$hght)})
    
    output$BMIChart <- renderPlot({
      
        
        
      plot(BMIdata$Height, BMIdata$Weight, lwd = 5, type="l", col = "black", ylab="Weight in kgs.", xlab = "Height in mts.")
      
      
      
   ##   lines(c(input$hght,input$hght), c(1.4,2.5), col ="blue", lwd = 5)
   ##   lines(c(input$wght,input$wght), c(63,125), col ="black", lwd = 5)
      
   
     
   
    })
  }
  )