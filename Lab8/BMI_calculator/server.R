library(shiny)
shinyServer(function(input, output) {
    bmi_value <- reactive({
      input$weight/(input$height^2)
    })
    bmi_value_status <- reactive({
      cut(bmi_value(), 
          breaks = c(0, 18.5, 24.9, 29.9, 40),
          labels = c("underweight", "normal", "overweight", "obese")
      )
    })
    output$bmi <- renderText({
      bmi <- bmi_value()
      paste("Your BMI is", round(bmi,1))
    })
    
    output$status <- renderText({
      status <- bmi_value_status()
      paste("You are", status)
    })
})
    