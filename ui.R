library(shiny)

shinyUI(fluidPage(
    titlePanel("BMI Calculator"),

    sidebarLayout(
        sidebarPanel(
        numericInput("weight", "Enter your weight in kg:",0),
        numericInput("height", "Enter your height in meters:",0),
        submitButton("Submit!")
        ),

        mainPanel(
            textOutput("bmi"),
            textOutput("status")
         
        )
    )
))
